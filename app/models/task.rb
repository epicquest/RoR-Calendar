class Task < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :category, presence: true
  validates :date_from, presence: true
  validates :date_to, presence: true
  validate :date_to_after_date_from

  private

  def date_to_after_date_from
    return if date_from.blank? || date_to.blank?

    if date_to <= date_from
      errors.add(:date_to, "must be after the start date")
    end
  end
end
