class Appointment < ActiveRecord::Base #706 methods thanks to AR VS 173 bu default
    belongs_to :physician
    belongs_to :patient
end