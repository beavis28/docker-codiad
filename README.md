# docker-codiad

Docker container for [Codiad][3]

"Codiad is a web-based IDE framework with a small footprint and minimal requirements.Codiad was built with simplicity in mind, allowing for fast, interactive development without the massive overhead of some of the larger desktop editors. That being said even users of IDE's such as Eclipse, NetBeans and Aptana are finding Codiad's simplicity to be a huge benefit. While simplicity was key, we didn't skimp on features and have a team of dedicated developer actively adding more."

## Install dependencies

  - [Docker][2]

To install docker in Ubuntu 14.04 use the commands:

    $ sudo apt-get update
    $ wget -qO- https://get.docker.com/ | sh

 To install docker in other operating systems check [docker online documentation][4]

## Usage

To run container use the command below:

    $ docker run -d -p xxxx:80 quantumobject/docker-codiad

Check port and point your browser to http://[ip]:xxxx/  to initially configure your codiad.

when done please execute this command for security and remove the install script:

    $ docker exec -it container_id after_install

## More Info

About codiad [codiad.com][1]

To help improve this container [quantumobject/docker-codiad][5]

[1]:http://codiad.com/
[2]:https://www.docker.com
[3]:https://github.com/Codiad/Codiad
[4]:http://docs.docker.com
[5]:https://github.com/QuantumObject/docker-codiad
