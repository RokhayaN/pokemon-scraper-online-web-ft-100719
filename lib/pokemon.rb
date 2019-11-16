class Pokemon
    attr_accessor :id,:name,:type,:db
    
    @@all=[]
    
  def initialize (id:, name:, type: ,db:,hp:)
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
    pokemon = Pokemon.new
    pokemon.id = pokemon_info[0]	       
    pokemon.name = pokemon_info[1]	      
    pokemon.type = pokemon_info[2]
    pokemon.hp = pokemon_info[3]
  end 
  def alter_hp(hp, db)
      db.execute("UPDATE pokemon SET hp = ? WHERE name = ?", hp, self.name)
  end
end 



