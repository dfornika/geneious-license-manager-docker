# geneious-license-server-docker

Containerized [license manager](https://help.geneious.com/hc/en-us/sections/360009220632-Geneious-Floating-License-Manager) for [Geneious](https://www.geneious.com/) genomics application.

This Dockerfile uses an [expect](https://linux.die.net/man/1/expect) script to automatically fill the interactive installer prompts. The [expect.exp]() file needs to be edited to fill in
relevant details before a functional license manager container can be build.

## Build Instructions

```
git clone https://github.com/dfornika/geneious-license-manager-docker.git
cd geneious-license-manager-docker
docker build -t geneious-license-manager .
```