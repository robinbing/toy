#' Calculate model statistical summary
#'
#' @description
#' Function to calculate model summary, include mean absolute percentage error,
#' root-mean-square error, mean absolute error
#'
#' @param actual real value response variable
#' @param predict predicted response variable
#'
#' @return mape, rmse, mae
#'
#' @export
fitStats =
  function (actual, predict){

    # mape
    mape = round(
      mean(
        abs((actual - predict) / actual)[is.finite(abs((actual - predict)/actual))]
        ),
      3
      )

    # rmse
    rmse = round(
      sqrt(
        mean((actual - predict)^2)),
      3)

    # mae
    mae = round(
      mean(
        abs(actual-predict)),
      3)

    return(list(mape = mape, rmse = rmse, mae = mae))
  }
