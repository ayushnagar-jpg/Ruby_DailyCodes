def reverse(str)
     return str if str.length <=1

     reverse(str[1..-1]) + str[0]
end
              
     
puts reverse("AyushNagar")