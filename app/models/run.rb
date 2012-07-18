class Run 
  include MongoMapper::Document

  many :individuals
  belongs_to :experiment
end 
