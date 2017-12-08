class Register < ApplicationRecord
  extend Enumerize

  enumerize :degree , in: [:primaire,:secondaire,:universitaire]
  enumerize :sex, in: [:masculin,:feminin]
end
