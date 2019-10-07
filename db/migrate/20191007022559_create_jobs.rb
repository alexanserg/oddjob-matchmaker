class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.column(:description, :string)
      t.column(:timerange, :string)
      t.column(:pricerange, :string)
      t.column(:contact, :string)
      t.timestamps()
    end
  end
end
