class Url < ActiveRecord::Base
	validates :long_url, 
		presence: true,
		:format => URI::regexp(%w(http https))

	validates :short_url,
		presence: true

	def self.reterieve_short_url(long_url)
		Url.find_by long_url(long_url)
			return self.short_url unless self.nil?
		nil
	end
end
