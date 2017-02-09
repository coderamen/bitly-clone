class Url < ActiveRecord::Base
  require 'securerandom'
  validates :long_url, presence: { message: 'URL required' }
  validates :long_url, :format => { with: URI::regexp }, :uniqueness => true
    # with: URI.regexp(%w(http https)),
    # message: 'Invalid URL'
  #  }
	# This is Sinatra! Remember to create a migration!
  def shorten
    short_url = SecureRandom.hex(3)
  end

end
