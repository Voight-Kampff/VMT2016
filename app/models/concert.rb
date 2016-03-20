class Concert < ActiveRecord::Base

	serialize :playlist, Array
	has_many :artists
	

	#has_many :items

	#front: images that will appear on program page
	has_attached_file :front, styles: {
		thumb: '260>x260'
	},
	:url => ':s3_alias_url',
	:s3_host_alias => 'photos.musicales-tannay.ch'

	#image 1 and 2, that will appear on dedicated page
	has_attached_file :image1, styles: {
		full: '570>x260'
	},
	:url => ':s3_alias_url',
	:s3_host_alias => 'photos.musicales-tannay.ch'

	has_attached_file :image2, styles: {
		full: '570>x260'
	},
	:url => ':s3_alias_url',
	:s3_host_alias => 'photos.musicales-tannay.ch'

end
