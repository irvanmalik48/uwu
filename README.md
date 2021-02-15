uwuman
======

A simple bash wrapper for pacman.
* based from https://github.com/isobit/pac

Pros:
* Really easy to use
* No dependencies, 100% bash script
* Works with `paru` and `yay` if installed

Cons:
* Doesn't cover all of `pacman`'s capabilities

## Why?

To help apt users get their familiar feels on pacman.

## Installation

### Quickstart
```
bash <(curl -s https://raw.githubusercontent.com/irvanmalik48/uwu/master/quickstart.sh)
```

### Manual
Clone this repository `git clone https://github.com/irvanmalik48/uwu.git`
and then put the `bin` folder on your PATH.

```
PATH=$PATH:{PATH_TO_LAPPY}/bin
```

## Usage

```
Usage: 
	uwu [options] <command> <args>...
	uwu install <package>
	uwu search <package>
	uwu info <package>
	uwu remove <package>
	uwu hunt [args]...
	uwu update [args]...
	uwu upgrade [args]...

Options:
  -h | --help		Show this screen.
  -v | --verbose 	Display the command to be passed through.
  -l | --local		Do a local query.
  --yay			Use yay instead of pacman.
  --paru		Use paru instead of pacman.
  --pacman		Force pacman if use_yay is enabled.
```

Lappy will automatically use `paru` or `yay` (if `paru` not present) if it is installed, and will automatically use `sudo` if running pacman while not root.

## Equivalents
```
uwu install		: yay -S
uwu search		: yay -Ss
uwu -l install	: yay -U
uwu -l search	: yay -Qs
uwu info		: yay -Si
uwu update		: yay -Sy
uwu upgrade		: yay -Syu
uwu remove		: yay -Rns
uwu hunt		: yay -Rns $(pacman -Qtdq)
uwu clear		: yay -Scc
```
