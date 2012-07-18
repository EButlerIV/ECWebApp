class Individual 
  include MongoMapper::Document

  belongs_to :experiment

  def run
    run = Run.first(:run_number => run_number, :experiment_id => experiment_id)
  end

  def children
    children = Individual.where(:parent_a => id).to_a
    children.concat Individual.where(:parent_b => id).all
    return children
  end
end
