# multi-git

Example CLI project written in Go.

### Install

Download and install Docker.

### Build the container image

<details>
<summary>Expand</summary>

```shell
docker build -t multi-git .
```

</details>

### Run the application

<details>
<summary>Expand</summary>

```shell
docker run -it --rm \
  -v /usr/bin:/usr/local/bin \
  --name multi-git multi-git
```

</details>
