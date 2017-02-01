class OrangeTree

	def initialize
		@height = 0
		@age = 0
		@oranges = 0
	end

	def showHeight
		puts "Your tree is " + @height.to_s + " feet tall"
	end

	def oneYearPasses
		@age += 1
		@height += 3
		if @age > 2
			@oranges += 2
		end
		if @age > 5
			puts "Your tree died :("
		end
	end

	def countTheOranges
		puts "Number of oranges: " + @oranges.to_s
	end

	def pickAnOrange
		if @oranges < 1
			puts "There are no more oranges left to give!"
		else
			@oranges -= 1
		end
	end

end

tree = OrangeTree.new
tree.showHeight
tree.oneYearPasses
tree.oneYearPasses
tree.showHeight
tree.pickAnOrange
tree.oneYearPasses
tree.pickAnOrange
tree.countTheOranges
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses