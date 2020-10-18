require './include/FirestoreOfDbh'

class FirestoreSql < FirestoreDbh
  def initialize
    @firestore = FirestoreDbh.new.connect
  end

  private

  def set(table, name)
    @table = table
    @name = name
  end

  public

  def insert(table, name, data)
    set(table, name)
    @data = data
    ref = @firestore.doc "#{@table}/#{@name}"
    ref.set(@data)
  end

  def select(table, name)
    set(table, name)
    ref = @firestore.doc "#{@table}/#{@name}"
    ref.get
  end
end
