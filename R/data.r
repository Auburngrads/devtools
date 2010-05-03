load_data <- function(pkg) {
  pkg <- as.package(pkg)
  
  path_data <- file.path(pkg$path, "data")
  
  paths <- dir(path_data, "\\.[rR]da(ta)?$", full = TRUE)
  unlist(plyr::llply(paths, load, globalenv()))
}