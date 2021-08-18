# Sys.setenv(lang = "en_US")
# Para usar o operador pipe %>%, basta executar usethis::use_pipe()

# 1 mpg == 0.425143707 km/l

# mtcars_new <-
mtcars %>%
  dplyr::mutate(
    kml = mpg * 0.425143707,
    .after = mpg
  ) %>%
  round(1)

# readr::write_csv(mtcars_new, file = "inst/mtcars_new.csv")
