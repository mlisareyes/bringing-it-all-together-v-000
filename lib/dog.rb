class Dog

  attr_accessor :name, :breed, :id

  def initialize(attr, id=nil)
    attr.each {|k,v| self.send(("#{k}="), v)}
    @id = id
  end
end
