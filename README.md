# selenium

Docker image with Selenium server

## Environment Variables

* `XVFB_PARAMS` - parameters for `xvfb-run`
* `XVFB_SERVER_ARGS` - parameters for virtual x-server (default: `-screen 0 800x600x24`)
* `SELENIUM_CLIARGS` - CLI-arguments for Selenium
* `SELENIUM_PARAMS` - one of the Selenium internal params, e.g.:
  * `-debug` - turns on debug mode
  * `-log /var/log/selenium.log` - enable logging to file
  
## Usage

Minimal:

```bash
docker run --name selenium -d alekseysmyrnov/selenium:latest
```

Tuned-Up:

```bash
docker run --name selenium -d \
    -e XVFB_PARAMS="-e /var/log/xvfb-errors.log" \
    -e SELENIUM_PARAMS="-debug -log /var/log/selenium.log" \ 
    alekseysmyrnov/selenium:latest
```
