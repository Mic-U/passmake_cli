# Passmake

Create random string used for a password for example.


## Installation

```
git clone git@github.com:Mic-U/passmake_cli.git
mix do escript.build, escript.install
```

## Usage

```
By default, using alphanumerics.

Usage: passmake --length <length> [--special]

Options:

--length, -l <length>
  Define length of random string.

--special, -s
  Use special chars [! # $ % & * + - . / = ? @ _]
```

## example

### Default

```
$ passmake -l 15
9a4RzEWLupBkGFV
```

### With Spacial Chars

```
$ passmake -l 15 -s
#2_oWh3EPW6@-Pm
```
