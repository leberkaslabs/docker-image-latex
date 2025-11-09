# LaTeX

[![Container Release (LaTeX)](https://github.com/leberkaslabs/docker-image-latex/actions/workflows/build-push-action.yml/badge.svg)](https://github.com/leberkaslabs/docker-image-latex/actions/workflows/build-push-action.yml)

This repository maintains the code for my LaTeX container image, which is designed to streamline the process of generating LaTeX documents. By utilizing this container image, users can easily integrate it into their CI/CD pipelines, enabling automated TeX build processes.

## Usage

The Docker image can be downloaded from the repository [dudecalledbro/latex](https://hub.docker.com/r/dudecalledbro/latex). To use this image, you can pull it from Docker Hub using the following command:

```bash
docker pull dudecalledbro/latex:latest
```

Once downloaded, you can use this image to compile LaTeX documents without needing to install LaTeX and its packages on your local system. This approach provides a consistent and isolated environment for LaTeX compilation across different machines. To compile a LaTeX document using this image, you can use a command similar to:

```bash
docker run --rm -v $(pwd):/data dudecalledbro/latex:latest lualatex your_document.tex
```

 This command mounts your current directory to the `/data` directory in the container and runs the lualatex command on `your_document.tex`.

## Build

This image build is scheduled with GitHub Actions and will be pushed to DockerHub. The image will also be rebuilt, if the `main` branch is updated. If you need to build the image locally, ensure [Docker](https://docs.docker.com/engine/installation/) is installed and execute the following:

```bash
docker build -t docker-latex:latest .
```

## License

Copyright © 2025 Niclas Spreng

Licensed under the [MIT license](LICENSE).
