#!/usr/bin/env bash

brew tap homebrew/dupes
brew tap caskroom/versions

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
brew install ringojs
brew install narwhal

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
brew install dark-mode
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install tree
brew install webkit2png
brew install zopfli

## INSTALL HOMEBREW WITH THE FOLLOWING LINE
## First you need to install XCode and agree
## to the terms and service
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install bash
brew install curl
brew install git
# brew install phantomjs
brew install rsync
# brew install svn
# brew install tmux
# brew install vim
brew install wget
# brew install youtube-dl
# brew install zsh

# brew cask install 1password
# brew cask install alfred
brew cask install appcleaner
# brew cask install atom
# brew cask install bartender
# brew cask install cornerstone
# brew cask install dropbox
brew cask install fantastical
# brew cask install firefox
brew cask install flux
brew cask install google-chrome
# brew cask install handbrake
# brew cask install handbrakecli
brew cask install iterm2
brew cask install keepingyouawake
# brew cask install libreoffice
# brew cask install macvim
# brew cask install paw
brew cask install sequel-pro
brew cask install slack
brew cask install sourcetree
brew cask install spectacle
# brew cask install spotify
# brew cask install sublime-text3
brew cask install the-unarchiver
# brew cask install transmission
# brew cask install transmit
# brew cask install vagrant
# brew cask install vagrant-manager
# brew cask install virtualbox
# brew cask install viscosity
# brew cask install vlc

# Remove outdated versions from the cellar.
brew cleanup
