
# Importação e limpeza dos dados da base
Sys.setlocale("LC_ALL", "pt_BR.UTF-8")

source("scripts/conexao_mongodb.R")

limpeza_dados_pib <- function(){
      
  dados_pib_brutos = dados_collection_pib();
  indice_inicial_valores <- 4;
  
  for (i in 1:length(dados_pib_brutos)) {
    for (j in 1:length(dados_pib_brutos[[i]])) {
      if(j > indice_inicial_valores){
        dados_pib_brutos[[i]][j]$ano2010 <- as.numeric(dados_pib_brutos[[i]][j]$ano2010)
        dados_pib_brutos[[i]][j]$ano2011 <- as.numeric(dados_pib_brutos[[i]][j]$ano2011)
        dados_pib_brutos[[i]][j]$ano2012 <- as.numeric(dados_pib_brutos[[i]][j]$ano2012)
        dados_pib_brutos[[i]][j]$ano2013 <- as.numeric(dados_pib_brutos[[i]][j]$ano2013)
        dados_pib_brutos[[i]][j]$ano2014 <- as.numeric(dados_pib_brutos[[i]][j]$ano2014)
        dados_pib_brutos[[i]][j]$ano2015 <- as.numeric(dados_pib_brutos[[i]][j]$ano2015)
        dados_pib_brutos[[i]][j]$ano2016 <- as.numeric(dados_pib_brutos[[i]][j]$ano2016)
      }
    }
  }
  
  
  
  
}




