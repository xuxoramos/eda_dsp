The R markdown can be run with a [rocker image](https://www.rocker-project.org) built with the Dockerfile in this repo.

In a terminal run

```
docker build -t rstudio .
docker run --rm -e PASSWORD=m1ch3ll3 -p 8787:8787 -v ~/:/home/rstudio/ rstudio
```

then in your browser go to localhost:8787 and use the password m1ch3ll3 with user rstudio.
