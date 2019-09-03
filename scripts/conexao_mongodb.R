
# Classes base para conexão com o banco de dados MongoDb e Find all dos dados brutos

install.packages("devtools")
library("devtools")
install_github("mongosoup/rmongodb", force = TRUE)
library(rmongodb)

collection_fex = "data-gov.FEX_2004_2016_municipio";
collection_pib = "data-gov.PIB_2010_2016_municipio";
mongo <- mongo.create();


conexao_com_banco <- function () {
  return (mongo.is.connected(mongo));
}

dados_collection_fex <- function(){
  return (mongo.find.all(mongo, collection_fex));
}

dados_collection_pib <- function(){
  return (mongo.find.all(mongo, collection_pib));
}