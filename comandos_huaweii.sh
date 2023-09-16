##COMANDOS BASICOS DE HUAWEII
#mostrar opcoes para o comando


display ?
#Mostrar todas as configuracoes 
display current-configuration

#modo de configuracao
system view

#acessar interface
interface GigabitEthernet
 #description noemar interface 

 #configurar ip
 ip address 10.0.0.10 255.255.255.0

#mostra configuracoes 
 display this 

 #mostra configuracoes da porta Ethernet 0/0/1
display interface Ethernet  0/0/1

#SSH na versao do huaweii
stelnet 172.24.16.5

#CONFIGURAR O DNS NO HUAWEEI
 dns server 8.8.8.8

 #verificar tabela arp switch
 display arp all

#mostrar mac adress aprendidos pelo switch
#os macs sao validos apenas por 8600 segunfos de forma dinamica

display mac-address

#mostrar mac-address de interfaces 

display mac-address ethernet  

#MOSTRAR VLANS 

display vlan

##CRIAR E CONFIGURAR VLAN EM UMA PORTA SWITCH
    system view
     # criar vlan 
     vlan 200 
     description NOME_DA_VLAN
 #atribuir vlan a interface      
 interface Ethernet 0/0/1
 portswitch  #transforma porta do switch em L2
 port link-type access # ou TRUNK
 port default vlan 200

#CONFIGURAR PORTA TRUNK 

interface GigabitEthernet 0/0/1
description NOME_INTERFACE
port link-type trunk
undo port trunk allo-pass vlan 1 # SEMPRE REMOVA A VLAN 1
port trunk allow pass vlan #NUMERO DA VLAN QUE VC QUER

-------------------------







