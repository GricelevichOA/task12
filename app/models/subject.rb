class Subject < ApplicationRecord
	enum status: [:fresh, :old]
end
