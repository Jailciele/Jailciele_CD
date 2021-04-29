#importação de dados
library(readr) 
 seguranca_v02 <- read_delim("data/seguranca_v02.csv", 
       ";", escape_double = FALSE, col_types = cols(MES = col_date(format = "%Y-%d-%m")), 
       trim_ws = TRUE)
 
#Maipulação dos dados
 library(dplyr)
 
#Cálculo da soma de todos roubos a Ônibus 
 
 seguranca_v02 %>% summarise(total=sum(`Roubo a Ônibus (Urbano e em Rodovia)`))
 
#Cálculo da soma de todos roubos a Ônibus por região da cidade
 
 seguranca_v02 %>% group_by(`Área Integrada de Segurança Pública - AISP`) %>%
   summarise(total=sum(`Roubo a Ônibus (Urbano e em Rodovia)`))
 
#Adicionar uma variável 
 
 
 