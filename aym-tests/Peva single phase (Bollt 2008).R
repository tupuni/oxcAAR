# Peva single phase (from Bollt 2008)
library(oxcAAR)
library(rio)
library(tidyverse)
library(data.table)

quickSetupOxcal()
code <- ' Plot()
 {
  Sequence("Peva")
  {
   Boundary("Start Peva Layer D");
   Phase("Phase 1")
   {
    Curve("SHCal13",SHCal13.14c);
    R_Date("Beta-191560", 590, 30);
    R_Date("NOSAMS-48511",590,30);
    R_Date("NOSAMS-48512",635,35);
    R_Date("NOSAMS-48157",805,30);
    R_Date("NOSAMS-48158",695,45);
    R_Date("NOSAMS-48047",630,30);
    R_Date("NOSAMS-48048",660,30);
    R_Date("NOSAMS-48011",995,35);
    R_Date("NOSAMS-48049",930,30);
    Curve("Marine13",marine13.14c);
    Delta_R("LocalMarine",-3,17);
    R_Date("NOSAMS-48506",1420,25);
    R_Date("NOSAMS-48507",1260,30);
   };
   Boundary("End Peva Layer D");
  };
 };
'
file <- executeOxcalScript(code)
text <- readOxcalOutput(file)
data <- parseOxcalOutput(text)
str(data)
print(data)

write.table(text, file = 'aym-tests/peva-raw.txt')

raw <- get_raw_probabilities(data)
raw

purrr::iwalk(
  .x = raw,
  .f = function(x, y) {
    x <- as.data.frame(x)
    y <- paste0('dataframe', y)
    assign(y, x, envir = globalenv())
  }
)

export_list(raw, file = "aym-tests/peva-raw/%s.csv")



probs <- list.files(path = "aym-tests/peva-raw",  # Identify all CSV files
                       pattern = "*.csv", full.names = TRUE) %>%
  lapply(read_csv) %>%
  bind_rows

library(data.table)
data_path <- "aym-tests/peva-raw/"
files_df <- paste0(data_path, list.files(path = data_path, pattern = "*.csv")) %>% lapply(FUN=function(f) {
  fread(f) })

probs <- list.files(path = "aym-tests/peva-raw",
                    pattern = "*.csv",
                    full.names = TRUE) %>%
#  map_df(~read_csv(.))
  map_df(~fread(.))
probs

write.table(probs, file = 'aym-tests/peva-raw.csv')
