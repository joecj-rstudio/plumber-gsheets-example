# sponge script plumber API
library(purrr)
library(magrittr)

#* Turn text parameter into sponge case
#* @param text the text input by a user
#* @get /sponge
sponge <- function(text) {
  if (is.numeric(text)) {
    stop("Parameter must be text.")
  }
  v <- strsplit(text, "")[[1]]
  every_other <- seq(v) %% 2 == 0
  uppercase <- function(x) toupper(x)
  sponge_v <- map_if(v, every_other, uppercase) %>% as_vector
  out <- paste(sponge_v, collapse = "")
  out
}
