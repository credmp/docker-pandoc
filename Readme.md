# [credmp/docker-pandoc](http://hub.docker.com/r/thomasweise/docker-pandoc/)

[![Docker Pulls](http://img.shields.io/docker/pulls/credmp/docker-pandoc.svg)](http://hub.docker.com/r/credmp/docker-pandoc/)
[![Docker Stars](http://img.shields.io/docker/stars/credmp/docker-pandoc.svg)](http://hub.docker.com/r/credmp/docker-pandoc/)

This is a Docker image containing a [`pandoc`](http://pandoc.org/)
installation which can make use of our [`TeX
Live`](http://en.wikipedia.org/wiki/TeX_Live) installation from
container
[thomasWeise/texlive-full](http://hub.docker.com/r/thomasweise/docker-texlive-full/),
which in turn provides some useful scripts and several fonts. It uses the basic pandoc installation from [thomasweise/docker-pandoc](http://hub.docker.com/r/thomasweise/docker-pandoc/) and enhances it with additional filters and dependencies.

We install `pandoc` via [`cabal`](http://www.haskell.org/cabal/), a package building and distribution system, which allows us to get the newest `pandoc` version as well as several filters.

## 1. Building and Components

The base (thomasweise/docker-pandoc) image has the following components:

- [`TeX Live`](http://www.tug.org/texlive/)
- [`ghostscript`](http://ghostscript.com/)
- [`poppler-utils`](http://poppler.freedesktop.org/)
- [`cabal`](http://www.haskell.org/cabal/)
- [`pandoc`](http://pandoc.org/)
- [`imagemagick`](http://www.imagemagick.org/)
- several `pandoc` filters, namely
   + [`pandoc-citeproc`](http://github.com/jgm/pandoc-citeproc),
   + [`pandoc-crossref`](http://github.com/lierdakil/pandoc-crossref),
   + [`latex-formulae-pandoc`](http://github.com/liamoc/latex-formulae), and
   + [`pandoc-citeproc-preamble`](http://github.com/spwhitton/pandoc-citeproc-preamble)

This image adds:

- [ pandoc-latex-environment ](https://github.com/chdemko/pandoc-latex-environment)

## 2. Usage

This image is used in my [pandoc-hbo](https://github.com/credmp/pandoc-hbo) project. To run it on your own pandoc consider the following usage:

The work directory is set to `/doc/`.

```
docker run -v $(pwd):/doc/ -t -i --rm credmp/pandoc pandoc -v
```

## 3. License

This image is licensed under the GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007, which you can find in file [LICENSE.md](http://github.com/thomasWeise/docker-texlive/blob/master/LICENSE.md). The license applies to the way the image is built, while the software components inside the image are under the respective licenses chosen by their respective copyright holders.

## 4. Contact

If you have any questions or suggestions about the base image, please contact [Thomas Weise](mailto:tweise@hfuu.edu.cn) of the [Institute of Applied Optimization](http://iao.hfuu.edu.cn) of [Hefei University](http://www.hfuu.edu.cn) in Hefei, Anhui, China.

If you have any questions regarding my additions, please contact [Arjen Wiersma](https://twitter.com/credmp).

