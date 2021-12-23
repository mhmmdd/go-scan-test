## Golang scan function test inside a Docker Container

If you wonder why `fmt.Scanln` function doesn't wait inside the Docker container this test project may be useful.

1. Build the image
```bash 
docker build --rm -t go-scan-test .
```
2. Run the container with attached mode, so you see that bash will wait the keypress event
```bash
docker run --rm -it go-scan-test
```
3. Run the container without attached mode, so you see that bash won't wait the keypress event
```bash
docker run --rm go-scan-test
```
