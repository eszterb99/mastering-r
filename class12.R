library(binancer)
library(jsonlite)
library(logger)

BITCOINS <- 0.42
log_info('Number of bitcoins {BITCOINS}')

# TODO: binance api need to be added retries
btcusd <- prices[symbol == 'BTC', usd]
log_info('The value of one bitcoin is ${btcusd}')

USDHUF <- fromJSON('https://api.exchangeratesapi.io/latest?base=USD&symbols=HUF')$rates$HUF
log_info('USDHUF exchange rate is {USDHUF}')

btcusd * BITCOINS * USDHUF
