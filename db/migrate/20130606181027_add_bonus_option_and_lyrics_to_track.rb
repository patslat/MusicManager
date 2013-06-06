class AddBonusOptionAndLyricsToTrack < ActiveRecord::Migration
  def change
    add_column :tracks, :bonus, :boolean
    add_column :tracks, :lyrics, :text
  end
end
