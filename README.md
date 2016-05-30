#calling otp library

APP_ROOT = File.dirname(__FILE__)
require File.join(APP_ROOT, 'otplib')
- - - -
#creating object otplib from the lirary class Otplib by 'new' method

otplib = Otplib.new

#calling 'generate_otp' method to generate an otp and printing it

puts otp = otplib.generate_otp

#calling 'send_otp' to send the generated otp to mobile phone

from = '+16305812225'
to = '8281965606'
account_sid = "AC3723541e809358f0f15d32cadf8021fd"
auth_token = "72ce7f43946a7df8d99ad982b0cad121"

# Sends the message and show a promt in your terminal or browser

puts otplib.send_otp from, to, otp, account_sid, auth_token
