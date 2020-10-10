require "google/cloud/firestore"

class FirestoreDbh
  def connect
    @project_id = 'forhub'
    @credentials_path = '/Users/davis/Developer/FoHub/assets/config/forhub-8383baf555da.json'
    Google::Cloud::Firestore.new(project_id: @project_id, credentials: @credentials_path)
  end
end
