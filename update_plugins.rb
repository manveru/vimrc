#!/usr/bin/env ruby
require 'open-uri'
require 'open3'
require 'erb'
require 'fileutils'
require 'pp'
require 'json'

# bogado/file-line
plugins = %w[
  airblade/vim-gitgutter
  cloudhead/neovim-fuzzy
  editorconfig/editorconfig-vim
  ervandew/supertab
  fatih/vim-go
  justinmk/vim-sneak
  kopischke/vim-fetch
  sbdchd/neoformat
  mhinz/vim-grepper
  michalliu/sourcebeautify.vim
  morhetz/gruvbox
  neomake/neomake
  rhysd/vim-crystal
  sheerun/vim-polyglot
  Shougo/deoplete.nvim
  Shougo/denite.nvim
  Shougo/unite.vim
  Shougo/vimfiler.vim
  terryma/vim-multiple-cursors
  tpope/vim-bundler
  tpope/vim-eunuch
  tpope/vim-rails
  tpope/vim-surround
  vim-airline/vim-airline
  vim-airline/vim-airline-themes
  vim-scripts/Css-Pretty
  wakatime/vim-wakatime
  wfleming/vim-codeclimate
]
# thirtythreeforty/lessspace.vim
# ctrlpvim/ctrlp.vim
# nixprime/cpsm
# Numkil/ag.nvim
# Dkendal/fzy-vim
# scrooloose/syntastic
# Shougo/deoplete.nvim

existing =
  if File.file?('plugins.nix')
    begin
      o, e, s = Open3.capture3('nix-instantiate', '--json', '--eval', '--strict', '--expr', <<-NIX)
        (import ./plugins.nix {
          pkgs.vimUtils.buildVimPluginFrom2Nix = { name, src, ... }: src;
          fetchFromGitHub = { rev, sha256, ... }: { inherit rev sha256; }; }
        )
      NIX
      fail e unless s.success?
      JSON.parse(o.strip)
    rescue => ex
      p ex
      {}
    end
  else
    {}
  end

packages = []

plugins.sort.each do |plugin|
  owner, repo, branch = plugin.split('/')
  branch ||= 'master'
  name = repo.gsub(/[^a-zA-Z]+/, '-').downcase

  warn "Processing: #{owner}/#{repo}##{branch}..."

  rev = `git ls-remote https://github.com/#{owner}/#{repo} #{branch}`.split.first
  fail "couldn't query remote" unless $?.success?

  if existing.dig(name, 'rev') == rev
    puts "using cached values ..."
    sha256 = existing.dig(name, 'sha256')
  else
    url = "https://github.com/#{owner}/#{repo}/archive/#{rev}.tar.gz"
    o, e, s = Open3.capture3('nix-prefetch-url', '--unpack', '--type', 'sha256', url)
    fail e unless s.success?
    sha256 = o.strip
  end

  packages << {
    name: name,
    owner: owner,
    repo: repo,
    rev: rev,
    sha256: sha256,
  }
end

File.write('plugins.nix.tmp', ERB.new(<<-TEMPLATE, 1, '<->').result)
{ pkgs, fetchFromGitHub }:
let buildVimPlugin = pkgs.vimUtils.buildVimPluginFrom2Nix;
in {
<% packages.each do |name:, owner:, repo:, rev:, sha256:| -%>
  <%= name %> = buildVimPlugin {
    name = "<%= name %>";
    src = fetchFromGitHub {
      owner = "<%= owner %>";
      repo = "<%= repo %>";
      rev = "<%= rev %>";
      sha256 = "<%= sha256 %>";
    };
  };
<% end -%>
}
TEMPLATE

FileUtils.mv('plugins.nix.tmp', 'plugins.nix')
