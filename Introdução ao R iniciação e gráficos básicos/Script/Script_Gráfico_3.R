dados<-read.table(file.choose(),header=T)
dados   
attach(dados)

#Comando tabula os dados da Variavél (separa todos os elementos diferentes e conta quanto de cada há na Variavel)
tabela1<-table(marcaCel) 
tabela1

#Desenhar Grafico   
bp<-barplot(tabela1)

######Gráfico Personalizado####

#inserir fundo colorido
par(bg="white") #cor do fundo do gráfico

#Desenhar Gráfico Personalizado
bp<-barplot(tabela1,
xlab="Estado Civil",              #nomeia o eixo x
ylab="Nº de pessoas",             #nomeia o eixo y
main="Estado civil \n dos entrevistados",  #título do gráfico
ylim=c(0,23),                     #origem e fim do eixo-y
col="darkblue",                   #declaração da cor, veja site
las=1,                            #muda a posição dos números do eixo-y
cex.axis=1,                       #tamanho da fonte eixo-y
cex=1,                            #tamanho da fonte eixo-x 
cex.lab=1,                        #tamanho da fonte do nome dos eixos
font.axis = 1 ,                   #estilo da letra: 1-normal...
cex.main=1.5,                     #tamanho da fonte do título
adj=0.5                           #orientação do texto: 0 esq, 0.5 centro e 1 direita
)

axis(2,seq(0,20,1),las=1,cex.axis=1)   #apresenta divisoes no eixo-y
                                       #2->eixo-y; seq->sequência de 0 a 20, divididas de 1 em 1
                                       #las=1 -> posição do horizontal

abline(h=0)                      #linha horizontal em x=0

text(bp,tabela1, labels = format(tabela1, 3), #inserir rotulos de dados
     pos = 3, cex = 1)