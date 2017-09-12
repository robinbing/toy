#' printDbname
#'
#' @description print data base name
#'
#' @param client_id client account id
#' @param user user name
#' @param password usr password
#'
#' @export
printDbname =
  function(client_id, user, password) {
    dbname = queryDbname(client_id, user, password)
    print(dbname)
  }
