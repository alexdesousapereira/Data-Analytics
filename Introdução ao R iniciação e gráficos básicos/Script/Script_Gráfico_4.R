dados<-read.table(file.choose(),header=T) #buscando um banco de dados
dados                                     #mostrando o banco de dados
attach(dados)                             #anexando o banco de dados

tabela1<-table(estcivil)    #montando uma tabela com a variável estado civil
tabela1                                   #mostrando a tabulação dos dados


par(bg="lightyellow")                     #inserindo uma cor de fundo do gráfico

par(mar = c(4.1, 7.1, 2.1, 2.1))   #aumentando as margens para editar fora
                                   #da área do gráfico
                                   #só usa quando achar necessário

bbp<-barplot(                    #gráfico de colunas (barras)=barplot
tabela1,                         #origem dos dados (tabela1)
horiz=TRUE,        #orientação das colunas - horiz=TRUE indica horizontal verdadeiro
#ylab="Estado Civil",             #nomeia o eixo y  -> a inclusão será manual
xlab="Nº de pessoas",                        #nomeia o eixo x
main="Estado civil \n dos Entrevistados",    #título do gráfico
xlim=c(0,23),                             #origem do eixo-x em 0 e fim em 23
col="lightgreen",                #declaração da cor do gráfico
las=1,                    #muda a posição dos números das categorias do eixo-y
cex=1,                            #tamanho da fonte eixo-y 
cex.axis=1,                       #tamanho da fonte eixo-x
cex.lab=1,                        #tamanho da fonte do nome dos eixos
font.axis = 1 ,         #estilo da letra: 1-normal, 2-negrito e 3-it?lico
cex.main=1,                       #tamanho da fonte do título
adj=0.5,              #movimenta o texto do título e eixo-x para
                      #esquerda=0, centro=0.5 e direita=1
)                     #fim da função e construção do gráfico 

abline(v=0)           #insere uma linha vertical em y=0

mtext(side = 2, text = "Estado civil",    #inserção manual do nome do eixo-y
 line = 5)                     #side=2 ->indica lado direito
             #line=5 ->deslocamento para esquerda na posição 5 
             #line=0 ->o texto fica perto da linha vertical

text(tabela1,bbp, labels = format(tabela1, 3), #inserir rótulos de dados
     pos = 4, cex = 1)    #pos=4 ->lado direito centro(no caso  fora da barra)