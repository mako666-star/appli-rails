class Cito < ActiveRecord::Migration[5.2]
  def change
    add_reference :doctors, :citie, foreign_key: true
    add_reference :patients, :citie, foreign_key: true
    add_reference :appointments, :citie, foreign_key: true
  end
end
