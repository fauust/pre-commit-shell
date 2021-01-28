# pre-commit-shell hooks

[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

[pre-commit](http://pre-commit.com/) hooks which runs the following programs on
shell script files:

- [shellcheck](https://www.shellcheck.net);
- [shfmt](https://github.com/mvdan/sh).

## Usage

`.pre-commit-config.yaml` example:

```yaml
- repo: https://github.com/fauust/pre-commit-shell
  rev: v1.0
  hooks:
    - id: shellcheck
      args: ["-x"]
    - id: shfmt
      args: ["-d", "-i", "2", "-ci"]
```

[shfmt](https://github.com/mvdan/sh) and
[shellcheck](https://www.shellcheck.net) tools must be installed separately.

## Alternative using docker (for CI systems)

For CI systems or if you don't want to install the tools locally, you can use
the docker official images:

- [shellcheck](https://hub.docker.com/r/koalaman/shellcheck);
- [shfmt](https://hub.docker.com/r/mvdan/shfmt/).

```yaml
- repo: local
  hooks:
    - id: docker-shell-shellcheck
      name: Run shellcheck with docker
      language: docker_image
      entry: koalaman/shellcheck:stable
      types: [shell]
    - id: docker-shell-shfmt
      name: Run shfmt with docker
      entry: mvdan/shfmt:latest -d -i 2 -ci
      language: docker_image
      types: [shell]
```
