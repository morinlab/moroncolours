
#' Extract a palette from a colourful image
#' This can be slow to run so the expectation is that any useful palettes will be saved in this package
#'
#' @param image_file
#' @param num_col
#'
#' @return
#' @import paletter jpeg
#' @export
#'
#' @examples
#' pepper_image = system.file("extdata", "SgtPepper.jpg", package="moroncolours")
#' sgt_pepper_9 = image_to_palette(pepper_image,9)
#' hne_image = system.file("extdata", "HandE.jpg", package="moroncolours")
#' hne_9 = image_to_palette(hne_image,9)
#' led_zep_image = system.file("extdata","ledzep.jpg",package="moroncolours")
#' led_zep_9 = image_to_palette(led_zep_image,9)

image_to_palette = function(image_file,num_col=9){
  pal_col = paletter::create_palette(image_path=image_file,
                 number_of_colors=num_col,
                 type_of_variable="categorical")
  return(pal_col)
}

#' Get the names of available Moron colour palettes
#'
#' @return
#' @export
#'
#' @examples
list_moron_pal = function(){
  return(names(moron_db))
}

#' Show a palette
#'
#' @param palette_name
#' @param num_col
#'
#' @return
#' @export
#'
#' @examples
show_moron_pal = function(palette_name,num_col){
  available = moron_db[[palette_name]]
  if(length(available)>1){
    if(missing(num_col)){
      available_nums = as.numeric(names(available))
      max_num = available_nums[which.max(available_nums)]
      message(paste("defaulting to"),max_num)
      message("provide a number of colours from the available options:")
      message(cat(names(available)[order(as.numeric(names(available)))],sep=","))
      show_col(unlist(moron_db[[palette_name]][[as.character(max_num)]]))
    }else{
      show_col(unlist(moron_db[[palette_name]][[as.character(num_col)]]))
    }
  }else if(length(available)==1){
    show_col(unlist(available))
  }

}

#' Get a palette made by a Morin lab member
#'
#' @param palette_name
#' @param num_col
#'
#' @return
#' @export
#'
#' @examples
get_moron_pal = function(palette_name,num_col){
  
  available = moron_db[[palette_name]]
  if(length(moron_db[[palette_name]])){
    if(missing(num_col)){
      available_nums = as.numeric(names(available))
      max_num = as.character(available_nums[which.max(available_nums)])
      message(paste("defaulting to:",max_num))
      return(moron_db[[palette_name]][[max_num]])
    }
    num_col = as.character(num_col)
    if(length(moron_db[[palette_name]][[num_col]])){
      return(moron_db[[palette_name]][[num_col]])
    }else{
      message(paste("num_col available for",palette_name,":",names(moron_db[[palette_name]])))
      message("if you want to recreate this palette with a different number of colours use image_to_palette()")
    }

  }
  message("no such palette/number combination")
  return(0)
}

#' Save a new palette for future use.
#' Running this will create a new value in the moron_db object
#' If you want to ensure the palette can be recreated add the call
#' to this function to palette_generato.R
#'
#' @param palette_colours
#' @param palette_name
#' @param num_col
#'
#' @return
#' @export
#'
#' @examples
#' save_moron_pal(led_zep_9,"ledzep",9)
save_moron_pal = function(palette_colours,palette_name,num_col){
  num_col = as.character(num_col)
  #check that the palette name isn't already taken
  if(!get_moron_pal(palette_name,num_col)){
    message("saving",palette_name,num_col)
    moron_db[[palette_name]][[num_col]]=palette_colours
    save(moron_db, file = "R/sysdata.rda")
    usethis::use_data(moron_db,overwrite = TRUE)
  }else{
    message("Cannot overwrite existing palette!")
  }

}

