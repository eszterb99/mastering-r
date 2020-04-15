library(binancer)

prices <- binance_coins_prices()
prices[symbol == 'BTC', usd]*0.42
prices[symbol == 'BTC', usd] 

library(httr)
library(jsonlite)

USDHUF <- fromJSON(readLines('https://api.exchangeratesapi.io/latest?base=USD&symbols=HUF'))$rates$HUF

prices[symbol == 'BTC', usd]*0.42 * USDHUF
