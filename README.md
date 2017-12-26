This is build scripts for skia sources for [nemocore](https://github.com/nemoux/nemocore) 

# Requirements
Below commands are exectuted under Ubuntu Linux environment.

I recommend Ubuntu server 16.10.

# How to create a debian package

1. Initialize skia sources

```
$./init.sh
```

2. Build skia and create skia debian package

Export some bash variables for debianize.
```
$./export.sh
```

Append "dl" in the libs in the component("skia") for creating dynamic library.
```
$cd skia
$vi BUILD.gn

...

component("skia")

...

libs=["dl"]

...

```

Install all dependent packages.
```
$sudo apt-get install devscripts equivs
$sudo mk-builddeps -r -i
```

Create a debian package
```
$dpkg-buildpackage -b -uc -us
```
