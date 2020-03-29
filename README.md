# docker-unifi
Unifi tools running on docker

# Quick Start
run `make` to start all services.

# Unifi Controller

### Ports
| COM | Port      | Usage                                                               |
| --- | --------- | ------------------------------------------------------------------- |
| TCP | 5514      | remote syslog capture                                               |
| TCP | 8080      | device and controller communication                                 |
| TCP | 8443      | controller GUI/API as seen in a web browser                         |
| TCP | 8880      | HTTP portal redirection                                             |
| TCP | 8843      | HTTPS portal redirection                                            |
| TCP | 6789      | UniFi mobile speed test                                             |
| TCP | 27117     | local-bound database communication                                  |
| UDP | 5656-5699 | used by AP-EDU broadcasting                                         |
| UDP | 10001     | device discovery                                                    |
| UDP | 1900      | "Make controller discoverable on L2 network" in controller settings |
| UDP | 3478      | Used for STUN                                                       |
