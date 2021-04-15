##############################################################################
##############Fazendo Gráfico de Setores (Pizza) 3D #############################
#############################################################################

#install.packages("plotrix") #instalando o pacote

library(plotrix) #pedindo para usar o pacote

dados<-read.table(file.choose(),header=T) #buscando o banco de dados  
dados                                     #visualizando o banco de dados
attach(dados)                             #anexando o banco de dados


tab1<-table(marcaCel)              #montando a tabulação da variável marca Celular 
tab1                              #visualizando a tabulação dos dados

#fazendo o gráfico de setores (pizza) 3D

pie3D(tab1) 


#----------------EDITANDO O GRÁFICO DE PIZZA---------------#

pie3D(                                                        #função: gráfico de pizza 3D
  tab1,                                                       #origem dos dados
  main="Marcas \n de Celulares",                              #título do gráfico
  explode=0.3,                                                #separarando em fatias
  labels=paste(names(tab1)," (",tab1," Celulares", ")",sep="")) #rótulos foi editado dentro da função