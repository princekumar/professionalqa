class Post < ActiveRecord::Base
  belongs_to :user
  has_many :subscriber

  extend FriendlyId
  friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
      new_record?
  end

  validates :title, presence: true, uniqueness: true
  validates :shortdescription, presence: true
  validates :keywords, presence: true
  validates :metadescription, presence: true
  validates :body, presence: true
  validates :date, presence: true

  def to_s 
  	"#{title} #{shortdescription} #{keywords} #{metadescription} #{body} #{date}"
  end

end
