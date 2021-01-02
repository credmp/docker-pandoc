# [credmp/docker-pandoc](http://hub.docker.com/r/credmp/docker-pandoc/)

[![Docker Pulls](http://img.shields.io/docker/pulls/credmp/docker-pandoc.svg)](http://hub.docker.com/r/credmp/docker-pandoc/)
[![Docker Stars](http://img.shields.io/docker/stars/credmp/docker-pandoc.svg)](http://hub.docker.com/r/credmp/docker-pandoc/)

This is a Docker image containing a [`pandoc`](http://pandoc.org/) installation which can make use of our [`TeX Live`](http://en.wikipedia.org/wiki/TeX_Live) installation.

It was built specifically for rendering documents using the [eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template) LaTeX template.

The basis for this image was [Thomas Weisse](https://github.com/thomasWeise/docker-pandoc)'s work. Currently it uses the `pandoc/ubuntu-latex` image as a base to be up-to-date with pandoc.

## Usage

```
docker run -v $(pwd):/doc/ -t -i --rm credmp/docker-pandoc \
 introduction.org \
       -o "org-introduction.pdf" \
```
