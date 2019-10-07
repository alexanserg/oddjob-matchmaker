class CreateWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :workers do |t|
      t.column(:name, :string)
      t.column(:specialty, :string)
      t.column(:availability, :string)
      t.column(:contact, :string)
      t.timestamps()
    end
  end
end
