class Document < ApplicationRecord

  DOC_TYPES = ['Markssheet','Photo ID','Address Proof','Personal ID','Other'].freeze
  
  belongs_to :employee

  has_one_attached :image

  validates :name, :doc_type, presence:true
end
