[![License](https://img.shields.io/github/license/INGV/quakeml-validator.svg)](https://github.com/INGV/quakeml-validator/blob/master/LICENSE)
[![GitHub issues](https://img.shields.io/github/issues/INGV/quakeml-validator.svg)](https://github.com/INGV/quakeml-validator/issues)
[![Join the #general channel](https://img.shields.io/badge/Slack%20channel-%23general-blue.svg)](https://ingv-institute.slack.com/messages/CKS902Y5B)
[![Get invited](https://slack.developers.italia.it/badge.svg)](https://ingv-institute.slack.com/)

# quakeml-validator [![Version](https://img.shields.io/badge/dynamic/yaml?label=ver&query=softwareVersion&url=https%3A%2F%2Fraw.githubusercontent.com%2FINGV%2Fquakeml-validator%2Fmaster%2Fpubliccode.yml)]()

This tool validate an XML file with QuakeML-1.2.xsd schema

## Quickstart
### Build docker
```
$ git clone https://github.com/ingv/quakeml-validator
$ cd quakeml-validator
$ docker build --tag quakeml-validator .
```

### Run docker
```
$ docker run -it --rm -v $(pwd)/your_file_to_validate.xml:/opt/input.xml quakeml-validator
```

### Example screenshot
![alt text](images/screen.png)

# Contribute
Please, feel free to contribute.

# Author
(c) 2019 Valentino Lauciani valentino.lauciani[at]ingv.it

Istituto Nazionale di Geofisica e Vulcanologia, Italia
