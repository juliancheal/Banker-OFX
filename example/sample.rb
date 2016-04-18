require 'ofx'

ofx = OFX('spec/fixtures/sample.ofx')

ofx.bank_accounts.each do |bank_account|
  puts bank_account.id # => "492108"
  puts bank_account.bank_id # => "1837"
  puts bank_account.currency # => "GBP"
  puts bank_account.type # => :checking
  puts bank_account.balance.amount # => "100.00"
  puts bank_account.balance.amount_in_pennies # => "10000"
  puts bank_account.transactions # => [#<OFX::Transaction:0x007ff3bb8cf418>]
end
