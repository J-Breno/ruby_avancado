require 'bundler/setup'
Bundler.require(:default)
# require 'faraday'

reponse = Faraday.get('https://emojihub.yurace.pro/api/random')
puts reponse.body