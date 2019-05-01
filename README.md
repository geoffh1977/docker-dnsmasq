# DNSMasq DNS Service #

![DNSMasq Image](https://raw.githubusercontent.com/geoffh1977/consul/master/images/dnsmasq.png)

## Description ##
This docker image provides a basic DNS service which can be used with docker containers or main system to provide a DNS service.

## Starting Consul Server ##
The default setup will create a DNS Service running within a Docker container. You can start this simple setup with the following command:

`docker run -it -rm --name dnsmasq --cap-add=NET_ADMIN --net=host -v CONFIG_DIR:/config geoffh1977/dnsmasq`

## Data Persistence And Configs ##
The container has no configuration to start with. All *.conf files will be loaded from the "/config" path. You can override the default config path and provide your own configuration files by mounting over the "/config" path.

### Getting In Contact ###
If you find any issues with this container or want to recommend some improvements, fell free to get in contact with me or submit pull requests on github.
