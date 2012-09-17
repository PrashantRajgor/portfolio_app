  class Company < ActiveRecord::Base
    validate :symbol_four_or_five_letters
    def symbol_four_or_five_letters
      if (symbol.length<4 or symbol.length>5 )
       errors.add :symbol, 'not more thane four to five letters are allowed'
      end
    end
  end
 # validate :cost_should_be_positive
  #def cost_should_be_positive
   # if (cost<0)
    #  errors.add :cost,'should be positive'
    #end
