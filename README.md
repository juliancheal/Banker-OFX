# OFX

A Ruby OFX (Open Financial Exchange) parser this is a fork from Kyle Welsby who originally forked from Anna Cruz.

The Banker-OFX (Kyle Welsby's fork) supports Bank Accounts and Credit Cards as well as Multiple Accounts.

This version supports more modern versions of Ruby

### Usage

	require 'ofx'

	ofx = OFX("statement.ofx")

	ofx.bank_accounts.each do |bank_account|
	  puts bank_account.id # => "492108"
	  puts bank_account.bank_id # => "1837"
	  puts bank_account.currency # => "GBP"
	  puts bank_account.type # => :checking
	  puts bank_account.balance.amount # => "100.00"
	  puts bank_account.balance.amount_in_pennies # => "10000"
	  puts bank_account.transactions # => [#<OFX::Transaction:0x007ff3bb8cf418>]
	end

	ofx.credit_cards.each do |credit_card|
	  puts credit_card.id # => "81728918309730"
	  puts credit_card.currency # => "GBP"
	  puts bank_account.balance.amount # => "-100.00"
	  puts bank_account.balance.amount_in_pennies # => "-10000"
	  puts credit_card.transactions # => [#<OFX::Transaction:0x007ff3bb8cf418>]
	end

### Supports
#### Ruby
* 1.9.2
* 1.9.3
* 2.0.0

#### OFX
* 1.0.2
* 2.1.1

### Original Fork

* Anna Cruz - https://github.com/annacruz/ofx

### Banker-OFX Fork

* Kyle Welsby - https://github.com/kylewelsby/Banker-OFX

### Original Creator

* Nando Vieira - http://simplesideias.com.br

### License

(The MIT License)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
