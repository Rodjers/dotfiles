# Rodjers does dotfiles

## dotfiles

Your dotfiles are how you personalize your system. These are mine.

## install

Run this:

```sh
git clone https://github.com/Rodjers/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **config/**: Any file or folder ending in `.symlink` will be symlinked to 
`~/.config/` which is now becomming the most common place for dotfiles instead
of directly in `$HOME`
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## thanks

I forked [holman](http://github.com/holman)' excellent
[dotfiles](http://github.com/holman/dotfiles) for a couple years before the
weight of my changes led me to break the link. But holman's
dotfiles were and still are a great way to organize dotfiles. A decent amount of the code in these dotfiles stem or are
inspired from holman's original dotfiles.
