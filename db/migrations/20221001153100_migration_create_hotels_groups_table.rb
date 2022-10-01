Sequel.migration do
  change do
    create_table(:hotels_groups) do
      primary_key :hotel_id
      String :name, :null => false
      Date :start_date
      Date :end_date
      foreign_key :group_id, :groups
    end
  end
end
