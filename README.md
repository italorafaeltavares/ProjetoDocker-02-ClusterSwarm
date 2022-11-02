## ProjetoDocker-02-ClusterSwarm
### Definição de um Cluster Swarm Local com o Vagrant

#
<p></p>

> Validando cluster Swarm: 
````
vagrant@master:~$ docker node ls
ID                            HOSTNAME   STATUS    AVAILABILITY   MANAGER STATUS   ENGINE VERSION
aktz73ba6lkxjq9fa95mwaksy *   master     Ready     Active         Leader           20.10.21
3vyrs4gt973pg36s6uqxjwt5r     node01     Ready     Active                          20.10.21
sebmcmfn3yp0bfiwth06e159o     node02     Ready     Active                          20.10.21
s51ylgnzu82nnv6ghxg12wuif     node03     Ready     Active                          20.10.21
````
#
> Inciando seriço no cluster Swarm: 
````
vagrant@master:~$ sudo docker service create --name meuapp --replicas 6 -dt -p 80:80 httpd
ji0vyc11wlz506egmgq1zm522
````
> Verificando serviço ativos no cluster Swarm: 
````
vagrant@master:~$ docker service ls
ID             NAME      MODE         REPLICAS   IMAGE          PORTS
ji0vyc11wlz5   meuapp    replicated   6/6        httpd:latest   *:80->80/tcp
````
> Aplicação publicada 

<p align="center">
  
  <img src="https://github.com/italorafaeltavares/ProjetoDocker-02-ClusterSwarm/blob/main/httpd.png" style="width: 550px;">
 
</p>

<p align="center">
