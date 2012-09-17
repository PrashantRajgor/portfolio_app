  class Company < ActiveRecord::Base
    validate :symbol_four_or_five_letters
    def symbol_four_or_five_letters
      if  symbol.length>4
       errors.add :symbol,'not more thane four to five letters are allowed'
      end
    end

 validate :cost_should_be_positive
def cost_should_be_positive
   if (price<=0)
     errors.add :price,'should be positive and contain some values'
  end
  end  end