# echo-args Docker image

This is a Docker image which simply prints out supplied arguments.

## Usage

When I am writing various scripts, I sometimes mess up passing arguments to Docker images. The situation usually boils down to this:

```powershell
docker run -it --rm some-image "arg0 arg1"
```

Versus this:

```powershell
docker run -it --rm some-image "arg0" "arg1"
```

By changing `some-image` to `ghcr.io/mtju/echo-args` I can quickly debug such kind of errors:

```powershell
docker run -it --rm ghcr.io/mtju/echo-args "arg0 arg1"        

arg0 arg1
```

```powershell
docker run -it --rm ghcr.io/mtju/echo-args "arg0" "arg1"

arg0
arg1
```

## Manual build from Dockerfile

```powershell
docker image build -t ghcr.io/mtju/echo-args .
docker push ghcr.io/mtju/echo-args
```
