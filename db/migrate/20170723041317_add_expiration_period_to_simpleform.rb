class AddExpirationPeriodToSimpleform < ActiveRecord::Migration[5.0]
  def change
  	add_column :simpleforms, :expiration_period, :integer
  end
end
