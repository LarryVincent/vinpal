# Base and extended named palettes used for visualization
base_palette <- c(
  sky = "#2D6A9B",
  sage = "#3E8D85",
  ochre = "#B59C40",
  apricot = "#D87E2F",
  cherry = "#C0292D",
  plum = "#774284",
  tide = "#5060AD"
)

secondary_palette <- c(
  sky = "#4AA2EA",
  sage = "#63B69E",
  ochre = "#DBB83D",
  apricot = "#F2A95D",
  cherry = "#D94B5D",
  plum = "#8858AB",
  tide = "#6F7CE4"
)

blacks_palette <- c(
  indigo = "#111010",
  ash = "#333130",
  smoke = "#545350",
  overcast = "#767472",
  heather = "#999593",
  concrete = "#BBB7B3",
  putty = "#DDD9D4",
  vellum = "#FCF9F6"
)

sky_palette <- c(
  sky = "#2D6A9B",
  daylight = "#4AA2EA",
  horizon = "#6CB5EE",
  cirrus = "#91C6F3",
  draft = "#B6DAF7",
  altitude = "#DAECFB"
)

sage_palette <- c(
  sprig = "#63B69E",
  dewleaf = "#84C5B2",
  glade = "#A2D3C6",
  mistleaf = "#C0E2D7",
  haze = "#E0F0EB",
  sage = "#3E8D85"
)

ochre_palette <- c(
  sunstone = "#DBB83D",
  saffron = "#E1C664",
  wheat = "#E6D089",
  thatch = "#EBDFAE",
  chamois = "#F7F0D8",
  ochre = "#B59C40"
)

apricot_palette <- c(
  marmalade = "#F2A95D",
  cantaloupe = "#F4BB7D",
  blush = "#F7CA9E",
  linen = "#F9DBBE",
  almondmilk = "#FCEEDF",
  apricot = "#D87E2F"
)

cherry_palette <- c(
  maraschino = "#D94B5D",
  sorbet = "#E06F7C",
  peony = "#E8959D",
  rosewater = "#F0B8BE",
  satin = "#F7DBDE",
  cherry = "#C0292D"
)

plum_palette <- c(
  wisteria = "#8858AB",
  lilac = "#A079BD",
  lavender = "#B79ACC",
  mauve = "#D0BCDE",
  heirloom = "#E7DDEF",
  plum = "#774284"
)

tide_palette <- c(
  breakwater = "#6F7CE4",
  current = "#848FDD",
  seabright = "#A9B1ED",
  drift = "#C0C6ED",
  foam = "#D6D8EB",
  tide = "#5060AD"
)


#' Retrieve a palette by name
#'
#' @param name The name of the palette (e.g., "sky", "plum", etc.)
#' @param named Logical. If TRUE (default), returns a named vector.
#'
#' @return A character vector of hex values
#' @export
get_palette <- function(name = "base", named = TRUE) {
  palettes <- list(
    base = base_palette,
    secondary = secondary_palette,
    blacks = blacks_palette,
    sky = sky_palette,
    sage = sage_palette,
    ochre = ochre_palette,
    apricot = apricot_palette,
    cherry = cherry_palette,
    plum = plum_palette,
    tide = tide_palette
  )
  pal <- palettes[[name]]
  if (is.null(pal)) stop("Palette not found: ", name)
  if (!named) return(unname(pal))
  return(pal)
}

