Sequel.migration do
  change do
    create_table(:users) do
      primary_key :id
      Integer :github_id, :null => false
      String :login, :null => false
      String :avatar_url
      String :url
      String :location
      String :company
      String :blog
      String :email
    end
  end
end
