# Science Python 3

Intended to ease setup and use of a Python interpreter, with some common scientific libraries pre-installed. This does
not leverage Anaconda, as that library seems bloated with a lot more software. Since this is a Docker image, extra
libraries can be added as a child Dockerfile.

## Usage

*Command Line*

Jupyter notebook

```
$ docker run -it -v $PWD:/app -p 8888:8888 rtaylor30/science-python
```

Python REPL
```
$ docker run -it -v $PWD:/app -p 8888:8888 rtaylor30/science-python python3
```

*Docker Compose*

Jupyter

```
$ docker-compose up jupyter
```

Python REPL

```
$ docker-compose run python
```

Python Script

```
$ docker-compose run python some-relative-script.py
```
