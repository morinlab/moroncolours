#Warning: don't run this unless you want to blow away all user-provided palettes

moron_db = vector("list")

moron_db$"HandE"$"9" = c("#773EB9","#AA7DD8","#E6ABFB",
                     "#B863BE","#CD9AC9","#EAB2E3",
                     "#C72577","#DB7DA6","#B78398")

moron_db$"SgtPepper"$"12" = c("#E6764E","#CC7D1E","#D1B742",
                              "#847006","#E4CC40","#E0D792",
                              "#717C24","#5B9383","#3B94C1",
                              "#40A6DE","#FD677F","#B06168")


moron_db$"clinical"$"all" = c(
  "M"="#118AB2",
  "Male"="#118AB2",
  "F"="#EF476F",
  "Female"="#EF476F",
  "EBV-positive"="#7F055F",
  "EBV-negative"="#E5A4CB",
  "POS"="#c41230",
  "NEG"="#E88873",
  "FAIL"="#bdbdc1",
  "Alive"="#046852",
  "alive"="#046852",
  "dead"="#a4bb87",
  "Dead"="#a4bb87",
  "deceased"="#a4bb87",
  "unknown"="#C3C9E9",
  "IPI_0"= "#3B9AB2",
  "IPI_1"= "#78B7C5",
  "IPI_2" = "#EBCC2A",
  "IPI_3" = "#E1AF00",
  "IPI_4" = "#F21A00",
  "Adult" = "#DCE0E5",
  "adult" = "#DCE0E5",
  "Pediatric" = "#677A8E",
  "pediatric" = "#677A8E",
  "Diagnosis"="#E57A44",
  "A"="#E57A44",
  "B"="#721817",
  "C"="#721817",
  "D"="#721817",
  "E"="#721817",
  "Progression"="#A44A3F",
  "Relapse"="#721817",
  "I"="#75F4F4",
  "FOLL1"="#75F4F4",
  "II"="#90E0F3",
  "FOLL2"="#90E0F3",
  "IIIA"="#B8B3E9",
  "FOLL3A"="#B8B3E9",
  "IIIB"="#D999B9",
  "FOLL3B"="#D999B9",
  "matched"="#F0B67F",
  "unmatched"="#D6D1B1",
  "FF"="#009FFD",
  "frozen"="#009FFD",
  "FFPE"="#95B2B8",
  "ctDNA"="#7E6148",
  "NA"="white"
)

moron_db$"b-cell"$"all" =  c(
  "B-ALL"="#C1C64B",
  "CLL"="#889BE5",
  "MCL"="#F37A20",
  "BL"="#926CAD",
  "PMBL"= "#227C9D",
  "PMBCL"= "#227C9D",
  "FL"="#EA8368",
  "tFL" = "#FF8595",
  "COMFL"="#8BBC98",
  "DLBCL"="#479450",
  "HGBL-NOS"="#294936",
  "HGBL-DH/TH"="#7A1616",
  "PBL" = "#E058C0",
  "CNS" = "#C1C64F",
  "THRLBCL" = "#A5F2B3",
  "MM"="#CC9A42",
  "MZL"="#065A7F",
  "SCBC"="#8c9c90",
  "UNSPECIFIED"="#cfba7c"
)


pepper_image = system.file("extdata", "SgtPepper.jpg", package="moroncolours")
sgt_pepper_9 = image_to_palette(pepper_image,9)

led_zep_image = system.file("extdata","ledzep.jpg",package="moroncolours")
led_zep_9 = image_to_palette(led_zep_image,9)
save_moron_pal(led_zep_9,"ledzep",9)

led_zep_16 = image_to_palette(led_zep_image,16)
save_moron_pal(led_zep_16,"ledzep",16)


mm = moroncolours::image_to_palette(system.file("extdata/warhol.jpg",package="moroncolours"),num_col = 16)
save_moron_pal(mm,"warhol",16)

mm = moroncolours::image_to_palette(system.file("extdata/frozen.jpg",package="moroncolours"),num_col = 16)
save_moron_pal(mm,"frozen",16)

doctor = moroncolours::image_to_palette(system.file("extdata/doctorwho.jpg",package="moroncolours"),12)
save_moron_pal(doctor,"doctorwho",12)

doctor = moroncolours::image_to_palette(system.file("extdata/doctorwho.jpg",package="moroncolours"),16)
save_moron_pal(doctor,"doctorwho",16)



al_file = system.file('extdata/easteregg.jpg',package='moroncolours')
al_pal_24 = moroncolours::image_to_palette(al_file,24)
moroncolours::save_moron_pal(al_pal_24,palette_name = "easteregg",num_col = 24)

al_file = system.file('extdata/ponyo.jpg',package='moroncolours')
al_pal_12 = image_to_palette(al_file,12)
save_moron_pal(al_pal_12,palette_name = "ponyo",num_col = 12)


al_file = system.file('extdata/uprising.jpg',package='moroncolours')
al_pal_12 = moroncolours::image_to_palette(al_file,num_col=12)
save_moron_pal(al_pal_12,palette_name = "bobmarley",num_col = 12)

al_pal_16 = moroncolours::image_to_palette(al_file,num_col=16)
save_moron_pal(al_pal_16,palette_name = "bobmarley",num_col = 16)

al_file = system.file('extdata/superape.jpeg',package='moroncolours')
al_pal_12 = moroncolours::image_to_palette(al_file,num_col=12)
save_moron_pal(al_pal_12,palette_name = "superape",num_col = 12)

al_pal_16 = moroncolours::image_to_palette(al_file,num_col=16)
save_moron_pal(al_pal_16,palette_name = "superape",num_col = 16)

al_file = system.file('extdata/picasso.jpeg',package='moroncolours')
al_pal_16 = moroncolours::image_to_palette(al_file,num_col=16)
save_moron_pal(al_pal_16,palette_name = "picasso",num_col = 16)

save(moron_db, file = "R/sysdata.rda")

usethis::use_data(moron_db,overwrite = TRUE)
