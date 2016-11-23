# selenium

Docker image with Selenium server

## Environment Variables

* `${SELENIUM_PARAMS}` - one of the Selenium internal params, e.g.:
  * `-debug` - turns on debug mode
  * `-log /var/log/selenium.log` - enable logging to file
  
## Usage

```bash
docker run --name selenium -d -e SELENIUM_PARAMS="-debug -log /var/log/selenium.log" alekseysmyrnov/selenium:latest
```
