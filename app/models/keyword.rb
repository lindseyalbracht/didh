class Keyword < ActiveRecord::Base
	belongs_to :text

	def self.all_grouped
		self.group(:sentence).select("sentence, COUNT(*) as count")
	end

end
