trade_macd <- function(data) {
    buy <- NA
    macd_vals <- as.data.frame(TTR::MACD(data, maType = "EMA", percent = FALSE))
    if(macd_vals$macd[nrow(macd_vals)-1] > macd_vals$signal[nrow(macd_vals)-1] &
       macd_vals$macd[nrow(macd_vals)] < macd_vals$signal[nrow(macd_vals)]) {
        # sell signal
        buy <- FALSE
    }
    else if(macd_vals$macd[nrow(macd_vals)-1] < macd_vals$signal[nrow(macd_vals)-1] &
       macd_vals$macd[nrow(macd_vals)] > macd_vals$signal[nrow(macd_vals)]) {
        # Buy signal
        buy <- TRUE
    }
    return(buy)
}
trade_macd(data)
