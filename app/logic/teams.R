box::use(   
    rhino
    # reactable[reactable]
)
#' @export
teams <- function() {
  read.csv("datasets/NFL Teams data.csv")
}
# #' @export
# table <- function(data) {
#   data |> 
#     reactable()
# }