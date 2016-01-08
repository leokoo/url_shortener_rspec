class Url < ActiveRecord::Base
	validates :long_url, 
		presence: true,
		:format => URI::regexp(%w(http https))

	validates :short_url,
		presence: true

end
