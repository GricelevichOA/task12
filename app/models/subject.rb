class Subject < ApplicationRecord
	enum status: ["New", "Old"]
end
