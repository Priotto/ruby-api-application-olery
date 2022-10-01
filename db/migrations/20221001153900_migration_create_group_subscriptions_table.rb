Sequel.migration do
  change do
    create_table(:group_subscriptions) do
      primary_key :group_id
      String :name, :null => false
      foreign_key :contract_id, :contracts
    end
  end
end
