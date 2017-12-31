# neofetch-formula

Installs and configures [Neofetch](https://github.com/dylanaraps/neofetch) from source (github).


There are only 2 states included in this formula (`install.sls` and `config.sls`), and there really isn't much that will need to be adjusted there.

To take advantage of this formula, I'd recommend changing the following:

- `defaults.yml` - Edit this file to change the installation directory, the configuration file location, the git repo to pull from (such as your fork), etc.
- `files/neofetch_config.j2` - Edit this to adjust the base configuration file template. Comment stuff out, rearrange, yank out what you don't need, etc.
- Pillar data - This one is obvious, but only define data/options that you want passed into and rendered in the base configuration template (`files/neofetch_config.j2`). This is especially relevant for the `neofetch.conf.info` variables, as those are the ones that get printed from the rendered template config file. The rest of the pillar options correspond to formatting options within the template config file.
- Simply don't define the configuration file within pillar. The `init.sls` state checks for the presence of `neofetch.conf` stanza in pillar before enabling and including `config.sls` to manage the config. If you do not define `conf` in pillar, this formula will simply install neofetch from source. This can be useful if you have a separate `dotfiles` type of formula to manage user-specific configuration files (neofetch will look for a user-local config file at `$HOME/.config/neofetch/config.conf`).

## Todo

- Consider templating the header/footer info in the config template so they can be defined via pillar like the rest of the config options (unlikely -- it'd be far easier to relegate heavily customized configs to a separate system to manage configs/dotfiles, such as a dotfiles-formula).

## Testing

This formula can be tested locally using [Test Kitchen](https://docs.chef.io/kitchen.html), [Vagrant](https://www.vagrantup.com/), and [VirtualBox](https://www.virtualbox.org/). Sample build files provided in the formula. Quick outline to setup test environment on OSX:

Install and setup brew:
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```
brew install cask
brew cask install vagrant
```

```
cd <formula dir>
bundle install
```
or
```
sudo gem install test-kitchen
sudo gem install kitchen-vagrant
sudo gem install kitchen-salt
```

Run a converge on the default configuration:
```
kitchen converge default
```
