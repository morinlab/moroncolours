
#' Extract a palette from a colourful image
#'
#' @param image_file
#' @param num_col
#'
#' @return
#' @import paletter
#' @export
#'
#' @examples
image_to_palette = function(image_file,num_col=9){
  pal_col = paletter::create_palette(image_path=image_file,
                 number_of_colors=num_col,
                 type_of_variable="categorical")
  return(pal_col)
}

get_moron_pal = function(palette_name,num_col="12"){
  num_col = as.character(num_col)
  if(length(moron_db[[palette_name]])){
    if(length(moron_db[[palette_name]][[num_col]])){
      return(moron_db[[palette_name]][[num_col]])
    }else{
      message(paste("num_col available for",palette_name,":",names(moron_db[[palette_name]])))
    }

  }
  message("no such palette/number combination")
}
