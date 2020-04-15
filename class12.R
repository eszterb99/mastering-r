library(binancer)
library(jsonlite)
library(logger)

BITCOINS <- 0.42
log_info('Number of bitcoins {BITCOINS}')

# TODO: binance api need to be added retries
get_bitcoin_price <- function() {
  tryCatch(
    binance_coins_prices()[symbol == 'BTC', usd],
    error = function(e) get_bitcoin_price()
  )
}

get_bitcoin_price()

tryCatch(binance_coins_prices()[symbol == 'BTC', usd])

btcusd <- get_bitcoin_price()
log_info('The value of one bitcoin is ${btcusd}')

USDHUF <- fromJSON('https://api.exchangeratesapi.io/latest?base=USD&symbols=HUF')$rates$HUF
log_info('USDHUF exchange rate is {USDHUF}')

btcusd * BITCOINS * USDHUF
