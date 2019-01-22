class Task < ApplicationRecord
	belongs_to :project
	enum priority: [:Veryhigh, :High, :Normal, :Low]
	validates :title, presence: true
	validates :deadline, presence: true
	validates :priority, presence: true
end
