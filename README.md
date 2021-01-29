## Docker image for Python 3.9 [![Image Size](https://images.microbadger.com/badges/image/0xnu20/alpine3-python3-docker.svg)](http://microbadger.com/images/0xnu20/alpine3-python3-docker) [![Docker Stars](https://img.shields.io/docker/stars/0xnu20/alpine3-python3-docker.svg?style=flat-square)](https://hub.docker.com/r/0xnu20/alpine3-python3-docker) [![Docker Pulls](https://img.shields.io/docker/pulls/0xnu20/alpine3-python3-docker.svg?style=flat-square)](https://hub.docker.com/r/0xnu20/alpine3-python3-docker)

A tiny Docker image for [Python 3.9](https://www.python.org/) with Alpine Linux as its base image.

### 🦡 Usage

```bash
$ docker run --rm 0xnu20/alpine3-python3-docker python3 -c 'print("Honey badger!")'
```

Running the command above will output `Honey badger!` in your terminal. Alternatively, you can run Docker container in interactive mode with:

```bash
$ docker run -it --rm 0xnu20/alpine3-python3-docker python3
```

🐍📦 the image supports `pip` and `pip3`.

### 🖋 License

This project is licensed under the [WTFPL License](LICENSE) - see the file for details.

### 🤝 Copyright

(c) 2020 [Finbarrs Oketunji](https://finbarrs.eu).