class Pokemon
    attr_accessor :id,:name,:type,:db
    
    @@all=[]
    
  def initialize (id:, name:, type: ,db:)
  @id = id
  @name = name
  @type = type
  @db = db
  @@all << self
  end 
  def self.save(name,type,db)
      db.execute("INSERT INTO pokemon(id, name, type) VALUES (?,?,?)",@id, name, type)
  end 
  def self.find(id, db)
    pokemon.id = pokemon_info[0]	       
    pokemon.name = pokemon_info[1]	      
    pokemon.type = pokemon_info[2]	     
  end 
end 
