# organize-files

Have you ever found your `~/Downloads` directory (or any other) full of clutter?
Look no further!

This is a collection of scripts that help you organize your files.

## Example Usage

### Run in current directory

```bash
$ organize-all.sh
```

```bash
$ organize-archives.sh
```

### Run in another directory

```bash
$ organize-all.sh ~/Downloads
```

```bash
$ organize-archives.sh ~/Downloads
```

## Install to your `bin` directory in PATH (optional)

```bash
./install.sh ~/bin
```

Note: After installing, you will call the scripts without the `.sh` extension.
Example:
    
```bash
$ organize-all
```

## Backups

The `organize-all.sh` script will create a backup of the original files in the provided directory.
