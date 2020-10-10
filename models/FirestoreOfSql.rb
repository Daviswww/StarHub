require "./include/FirestoreOfDbh"

class FirestoreSql < FirestoreDbh
  @table = ''
  @name = ''
  @data = ''
  
  def initialize
    @firestore = FirestoreDbh.new.connect
  end

  public

  def insert(table, name, data)
    @table = table
    @name = name
    @data = data
    ref = @firestore.doc "#{@table}/#{@name}"
    ref.set(@data)
  end

  def select(table, name)
    @table = table
    @name = name
    ref = @firestore.doc "#{@table}/#{@name}"
    ref.get
  end
end

# db = FirestoreSql.new
# datas = db.select('asd', 'qwe')
# puts datas[:qwe]
# db.insert('asd', 'qwe', {sad: 'ggg', qwe: 'ssd'})
