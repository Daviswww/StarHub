require 'jwt'
require './models/FirestoreOfSql'

class Jwt < FirestoreSql
  attr_reader :name, :room_id

  def initialize
    @sql = FirestoreSql.new
  end

  private

  def encode_token(password)
    @password = password
    JWT.encode @payload, @password, 'HS256'
  end

  def decode_token(password, token)
    @password = password
    @token = token
    JWT.decode @token, @password, true
  end

  public

  def create_token(name, room_id, password)
    @payload = {
      name: name,
      room_id: room_id
    }
    @token = encode_token(password)
    @sql.insert('room', room_id, { room_id: room_id, token: @token })
    true
  end

  def verify_token(room_id, password)
    datas = @sql.select('room', room_id)
    begin
      decode_token(password, datas[:token])
      true
    rescue => e
      puts e.message + ' error.'
      false
    end
  end
end

# jwt = Jwt.new
# entoken = jwt.create_token('hello', '1', '1234')
# detoken = jwt.verify_token('1', '124')