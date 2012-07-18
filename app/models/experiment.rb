class Experiment 
  include MongoMapper::Document

  many :runs
end 
