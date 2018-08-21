# + one or more and d - digit
puts /\d+/ === "123" #true

# 172.16.0.0 to 172.31.255.255
IP_ADDRESS_REGEX = /^((?:(?:^|\.)(?:\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])){4})$/

def is_valid_ip_address? ip
  ip =~ IP_ADDRESS_REGEX
end

p is_valid_ip_address?("999.16.0.0") ? "valid" : "invalid"
p is_valid_ip_address?("172.16.0.0") ? "valid" : "invalid"
p is_valid_ip_address?("172.131.255.255") ? "valid" : "invalid"
p is_valid_ip_address?("172.31.255.256") ? "valid" : "invalid"
p '~' * 120

VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

def is_valid_email? email
  email =~ VALID_EMAIL_REGEX
end

puts is_valid_email?("jordan@hudgens.com") ? 'Valid' : 'Invalid'
puts is_valid_email?("jordan@hudgens.com") ? 'Valid' : 'Invalid'
p '~' * 120

# /i modifier (ignores case of [a-zA-Z])
regex = /^[a-z0-9]+@[a-z0-9]+\.[a-z]+$/i
string = 'Install@Gmail.Com'
p string =~ regex ? "Valid : #{string}" : "Invalid Mail"


r = /^[a-z\d\.]+@[a-z\d\.]+\.[a-z]+$/
s = 'install2012.vv@smtp.gmail.com'
p s =~ r ? "Valid : #{s}" : "Invalid Mail"

def split_into_words(str)
  str.split(/(?=[A-Z])/)
end

puts split_into_words("camelCasingTestFooBar")
      .map {|x| x.downcase}
      .join('*')