class Invoice < ApplicationRecord
has_many :line_items
has_many :products, through: :line_items
accepts_nested_attributes_for :products, reject_if: :all_blank, allow_destroy: true

def base_price
	cost = 0
	line_items.each do |line|
		cost += line.product.price * line.units
	end
	cost
end

def total_units
	ct = 0
	line_items.each do |line|
		ct += line.units
	end
	ct
end

def discount
	ct = total_units
	if ct >= 10 and ct < 20
		return 0.1
	elsif ct > 20
		return 0.15
	else
		return 0
	end 
end

def cost
	cost = (base_price * (1 - discount)) * 1.0725
end

end
