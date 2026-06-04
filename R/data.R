#' Load bundled Pokémon TCG dataset (cached)
#'
#' @return A tibble containing Pokémon TCG data.
#' @importFrom readr read_csv
#' @export
load_data <- function() {
  if (is.null(.slowpoke_cache$dat)) {
    path <- "https://www.dropbox.com/scl/fi/tnl4wcmgduu3bnmmllz2u/pokemon_cards.csv?rlkey=h7evg3hr4ckzqrxrzoy458ojs&st=uzrlktbc&dl=1"
    .slowpoke_cache$dat <- readr::read_csv(path, show_col_types = FALSE)
  }
  .slowpoke_cache$dat
}

.slowpoke_cache <- new.env(parent = emptyenv())
.slowpoke_cache$dat <- NULL
