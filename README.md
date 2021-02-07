# Asciiquarium

A dockerized version of the legendary
[asciiquarium](https://github.com/cmatsuoka/asciiquarium). Made mostly because I
didn't want to install perl on my main system :smile:.

<img src="screenshot.png" width="804">

Many thanks to [cmatsuoka](https://github.com/cmatsuoka) for making this
wonderful terminal graphic!

<p align="center">
    <a href="https://hub.docker.com/repository/docker/jarulsamy/asciiquarium" alt="asciiquarium">
        <img src="https://img.shields.io/docker/v/jarulsamy/asciiquarium"/></a>
    <a href="https://hub.docker.com/repository/docker/jarulsamy/asciiquarium" alt="asciiquarium">
        <img src="https://img.shields.io/docker/pulls/jarulsamy/asciiquarium"/></a>
    <a href="https://hub.docker.com/repository/docker/jarulsamy/asciiquarium" alt="gpl3">
        <img src="https://img.shields.io/docker/image-size/jarulsamy/asciiquarium"/></a>
    <a href="https://www.gnu.org/licenses/gpl-3.0.en.html" alt="gpl3">
        <img src="https://img.shields.io/github/license/jarulsamy/asciiquarium-docker"/></a>
</p>

## Usage

> Note, this container must **always** run interactively, otherwise it will
> immediately exit.

### Option 1: Pulling

The latest version should be available on Docker hub, so running it is as simple
as:

```
$ docker run --rm -it jarulsamy/asciiquarium:latest
```

### Option 2: Building

Clone this repo:

```
$ git clone https://github.com/jarulsamy/asciiquarium-docker.git
```

Build and tag the image:

```
$ cd asciiquarium-docker
$ docker build . -t asciiquarium
```

Run it:

```
$ docker run --rm -it asciiquarium
```
