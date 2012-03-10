#A
class Numeric
	@@conversion_hash = 
		{
			:dollar => {:yen => 0.013, :euro => 1.292, :rupee => 0.019},
			:euro => {:dollar => 1.292, :rupee => 1, :yen => 1},
			:rupee => {:dollar => 0.019, :euro => 1, :yen => 1},
			:yen => {:dollar => 0.013, :euro => 1, :rupee => 1}
		}

   def method_missing(method_id)
     name = method_id.to_s
     if name =~ /^dollar|yen|euros|rupee|$/
       self.send(name + 's')
     else
       super # pass the buck to superclass
     end
   end

   def dollars()
    @current_currency = :dollar
    self
   end

   def euros()
    @current_currency = :euro
    self
   end

   def rupees()
    @current_currency = :rupee
    self
   end

   def yens()
    @current_currency = :yen
    self
   end

   def in(to_currency)
     if @@conversion_hash.has_key? @current_currency

		conversion_rate = @@conversion_hash[@current_currency]
		singular_currency = to_currency.to_s.gsub( /s$/, '').to_sym

		if conversion_rate.has_key? singular_currency
		 self * conversion_rate[singular_currency]
		end
     end
   end
 end

puts 5.dollar.in(:euros)
puts 1.euro.in(:dollars)
puts 10.rupees.in(:euro)

#B
String.class_eval do
  def palindrome?
    self.gsub!(/\s|\W/,"")
    return self.downcase.reverse == self.downcase
  end
end

#C
Enumerable.class_eval do
  def palindrome?
    return (self.is_a? Array) ? self.reverse == self : self.to_a.palindrome?
  end
end

puts "A man, a plan, a canal -- Panama".palindrome? #=>true
puts "Madam, I'm Adam".palindrome? #=>true
puts "Abracadabra".palindrome? #=>false
pvalue = {"hello"=>"world"}
puts pvalue.palindrome? #=>true
puts (1..2).palindrome? #=>false
puts "madamimadam".chars.each.palindrome? #=>true
puts "what".chars.each.palindrome? #=>false