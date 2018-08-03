class Dog

  attr_accessor :name, :breed, :id

  def initialize(attr, id=nil)
    attr.each {|k,v| self.send(("#{k}="), v)}
    @id = id
  end

  def self.create_table
    sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS dogs (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        album TEXT
        )
        SQL
    DB[:conn].execute(sql) 
  end
end
