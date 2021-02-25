require_relative '../lib/cbr_rates'

# error - Money.use_i18n = false
# fix it
Money.locale_backend = :currency

usd = Money.new('1_50', 'USD')

result = CbrRates.new.exchange(usd, 'CAD')

puts "1.50 USD -> CAD: #{result.format}"

result = CbrRates.new.exchange(usd, 'RUB')

puts "1.50 USD -> RUB: #{result.format}"
