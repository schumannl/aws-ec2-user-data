# AWS EC2 userData sample

### Preface
Predefined list of commands which should be executed during the startup of an AWS EC2 instance to have:
- git
- php
- composer
- docker
- docker compose
installed by the end of the lunch of the instance.

Form more information about the user data, visit [Running commands on your Linux instance at launch](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html).

### Note
Composer requires `HOME` or `COMPOSER_HOME` environment variables to be set, however at this stage of the initialization noe of them is set.
This is why I set it in the script.