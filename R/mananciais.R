# usepackage::use_pipe() add %>%

calcular_media_volume <- function (
  sistema = "Cantareira",
  ano = 2000:2021,
  mes = 1:12) {
  "https://git.io/JOLeb" %>%
    readr::read_delim(delim = ";") %>%
    dplyr::mutate(
      ano = lubridate::year(data),
      mes = lubridate::month(data)
    ) %>%
    dplyr::group_by(sistema, ano, mes) %>%
    dplyr::summarise(
      media_volume_porcentagem =
        base::mean(volume_porcentagem, na.rm = TRUE)
    ) %>%
    dplyr::ungroup() %>%
    dplyr::filter(
      ano %in% {{ ano }},
      mes %in% {{ mes }},
      sistema == {{ sistema }}
    )
}
