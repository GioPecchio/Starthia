class Content < ActiveRecord::Base

	extend FriendlyId
	friendly_id :title, use: :slugged

	belongs_to :user
	belongs_to :category

	has_many :purchases

  	has_attached_file :copertina, styles: { large: "500x>", medium: "300x>", thumb: "100x>" } 
  	validates_attachment_content_type :copertina, content_type: /\Aimage\/.*\Z/

  	validates_presence_of :title, :tagline, :description, :price, :team, :equity, :copertina, :on => :create, :message => "can't be blank", class: "error"
end
