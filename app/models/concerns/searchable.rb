module Searchable
  extend ActiveSupport::Concern

  included do 
    extend ClassMethods
  end

  module ClassMethods
    def search(fields, q)
      where(fields.map {|c| "#{c} ILIKE ?"}.join(' OR '),  *(1..fields.count).map { "%#{q}%" })
    end
  end

end