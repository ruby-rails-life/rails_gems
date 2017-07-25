class HolidaysForm < ActiveType::Object
  nests_many :holidays, reject_if: :all_blank, default: proc { Holiday.all }
end
