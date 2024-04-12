#' @title Metadata for the first 10 xkcd comics
#'
#' @format
#' \describe{
#'  \item{month}{Month of the year the comic was published}
#'  \item{num}{Comic number}
#'  \item{link}{Link to relevant context, source information, or a large version of the comic image. This field is empty for the first 10 comics.}
#'  \item{year}{Year the comic was published.}
#'  \item{news}{Seemingly random tidbits of information about the comic(e.g., backstory, contributors, merch links. May contain HTML for the later comics but is black for the first 10)}
#'  \item{safe_title}{The title of the comic, not sure what's so safe about it.}
#'  \item{transcript}{Transcription of the text in the comic image.}
#'  \item{alt}{Alt text for the image in the web browser.}
#'  \item{img}{URL linking to the comic image.}
#'  \item{title}{The title of the comic.}
#'  \item{day}{Dat of the month the comic was published.}
#' }
#' @source <https:/.xkcd.com/json.html>
"xkcd_data"
