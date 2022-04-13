moron_db = vector("list")

moron_db$"HandE"$"9" = c("#773EB9","#AA7DD8","#E6ABFB",
                     "#B863BE","#CD9AC9","#EAB2E3",
                     "#C72577","#DB7DA6","#B78398")

moron_db$"SgtPepper"$"12" = c("#E6764E","#CC7D1E","#D1B742",
                              "#847006","#E4CC40","#E0D792",
                              "#717C24","#5B9383","#3B94C1",
                              "#40A6DE","#FD677F","#B06168")


save(moron_db, file = "R/sysdata.rda")

usethis::use_data(moron_db,overwrite = TRUE)

