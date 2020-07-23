df_event <- read.csv('https://dqlab-dataset.s3-ap-southeast-1.amazonaws.com/event.csv', stringsAsFactors = F)
dplyr::glimpse(df_event)

#mengubah kolom created_at menjadi tipe timestamp
library(lubridate)
df_event$created_at <- ymd_hms(df_event$created_at)
dplyr::glimpse(df_event)


library(dplyr)
df_event %>% group_by(nama_event) %>% summarise(jumlah_event = n(), loan = n_distinct(loan_id),investor = n_distinct(investor_id))

