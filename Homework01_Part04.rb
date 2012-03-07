class Dessert
	def initialize(name, calories)
		@name = name
		@calories = calories
	end

	def healthy?
		if @calories < 200
			return true
		end

		return false
	end
	
	def delicious?
		return true
	end

	def name
		@name
	end

	def name=(name)
		@name = name
	end

	def calories
		@calories
	end

	def calories=(calories)
		@calories = calories
	end

end

class JellyBean < Dessert
	def initialize(name, calories, flavor)
		@name = name
		@calories = calories
		@flavor = flavor
	end
	def delicious?
		if flavor.eql? "black licorice"
			return false
		end

		return true
	end

	def flavor
		@flavor
	end

	def flavor=(flavor)
		@flavor = flavor
	end
end