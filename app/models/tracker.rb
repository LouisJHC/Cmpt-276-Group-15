class Tracker < ActiveRecord::Base
    validates :activity, presence: true
    validates :duration, presence: true
    validates :duration, numericality: true
    validates :effect, presence: true
    validates :weight, presence: true
    validates :weight, numericality: true
    validates :totolduration, presence: true
    validates :totolduration, numericality: true
    validates :progress, presence: true
end
