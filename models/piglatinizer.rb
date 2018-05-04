require 'pry'
class PigLatinizer

  def piglatinize(text)
    phrase = text.split(" ")
    transform = []
    
    phrase.each do |w|
<<<<<<< HEAD

      latin = w.split /([aeiouAEIOU].*)/
      joy = latin - [""]
      if joy.length > 1
        transform << (joy[1] + joy[0] + "ay")
      else
        transform << (joy[0] + "way")
=======
      
      # if w[0] =~ /[aeiouAEIOU]/
      #   transform << (w + "way")
      # elsif w[1] =~ /^[^aeyiuo]+$/
      #   transform << (w[2..-1] + w[0..1] + "ay")
      # else
      #   transform << (w[1..-1] + w[0] + "ay")
      # end
      latin = w.split /([aeiou].*)/
      latin = latin.reject(&:blank?)
      if latin.length > 1
        transform << (latin[1] + latin[0] + "ay")
      else
        transform << (latin[0] + "way")
>>>>>>> 2c9c8dda5cd2d4b980fc9b4ea532842e18ce00b4
      end
      
    end
    pig = transform.join(" ")
    pig
  end
  
end