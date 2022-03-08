# Get current cash balance
bals <- binance_balances(threshold = 0, usdt = T)
cash <- bals %>% filter(asset %in% c("AUD", "USDT", "BUSD"))
