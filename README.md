<h1 align="center">Okteto Golang Dev Container</h1>
<p align="center">
	<img src="https://img.shields.io/github/v/tag/insrapperswil/okteto-dev-go.svg?label=release&logo=github&style=flat-square">
	<img alt="Build" src="https://img.shields.io/github/workflow/status/INSRapperswil/okteto-dev-go/Build%20and%20Push?label=build&logo=github&style=flat-square">
</p>

<p align="center">
This repository contains the required files to build a functional development container for Okteto and Golang.
</p>

---

## Example
The following file shows an example configuration working for Okteto.
```yaml
name: hello-world
image: insost/okteto-dev-golang:1.19
autocreate: true
workdir: /okteto
command: /bin/bash
volumes:
  - /go/pkg/                # persist go dependencies
  - /root/.cache/go-build/  # persist go build cache
  - /root/.vscode-server    # persist vscode extensions
securityContext:
  capabilities:
    add:
    - SYS_PTRACE            # required by the go debugger
forward:
  - 8080:8080
persistentVolume:
  enabled: true
```