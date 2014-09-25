class Search
	include ActiveModel::Model
	
	attr_reader :term

	def initialize(options = {})
		@term = options.fetch(:term, "")
	end
	
	def shouts
		#we want to return all the shouts that contain the hashtag
		Shout.search do
			fulltext term
		end.results
	end

private


end