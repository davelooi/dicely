Sequel.migration do
  up do
    create_table :rolls do
      primary_key :id
      Integer :die_faces
      Integer :result

      DateTime :created_at 
      DateTime :updated_at 

      index :die_faces
      index :result
    end
  end

  down do
    drop_table(:rolls)
  end
end
