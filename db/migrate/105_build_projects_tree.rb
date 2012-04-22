class BuildProjectsTree < ActiveRecord::Migration
  def self.up
    add_column :repositories, :is_default, :boolean, :default => false
    Project.rebuild!
  end

  def self.down
    remove_column :repositories, :is_default
  end
end
