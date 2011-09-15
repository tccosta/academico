class Centro < ActiveRecord::Base

  validates_presence_of :nome, :sigla
end

