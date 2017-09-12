#' query database name for clients
#'
#' @description
#' Function to query databse name for specific client
#'
#' @param client_id account id
#' @param user user account id
#' @param password user password
#'
#' @import RMySQL
#'
#' @export
queryDbname =
  #
  # query client db name by using client id
  #
  function(client_id , user, password) {
    bvs.db = dbConnect(MySQL(),
                       user = user,
                       password = password,
                       dbname = 'bvs',
                       host = "tableau.db.twonil.com",
                       port = 3306)
    dbname.query = paste0("Select dbname
                          From bvs.tn_accounts
                          Where aid = ", client_id, "")
    dbname = dbSendQuery(bvs.db, dbname.query)
    dbname = fetch(dbname, -1)
    return(as.character(dbname))
  }
