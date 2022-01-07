class ChangeWeeklyOrMonthlyToString < ActiveRecord::Migration[5.2]
  def change
    change_column :plants, :weekly_or_monthly, :string
  end
end
