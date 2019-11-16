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
  def self.find (id,db)
    self.new = pokemon_new
    pokemon.id = pokemon_new [0] 
    pokemon.name = pokemon_new[1]
    pokemon.type = pokemon_new[2]
  end
end 
