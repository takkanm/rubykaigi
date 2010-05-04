# -*- coding: utf-8 -*-
class RubyKaigi < ActiveRecord::Base
  class << self
    (2006..2010).to_a.each do |year|
      define_method("_#{year}") do
        RubyKaigi.find_by_year(year)
      end
    end
    alias :latest :_2010

    def latest_year
      latest.year
    end
  end
end
