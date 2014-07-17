# encoding: utf-8
module ChineseName
  class << self
    def generate(num = 1000, last_name = '', first_name = '')
      names = []
        1.upto(num) do  |i|
          lname =  '' != last_name ? last_name : rand_string(last_names)
          fname =  '' != first_name ? first_name : rand_string(first_names)
          names << [lname + fname,rand_string(genders),rand_string(birth_years)]
        end
      names
    end

    def rand_string(chars)
      chars[rand(chars.size)]
    end
  end
end

require 'chinese_name/last_name'
require 'chinese_name/first_name'
require 'chinese_name/common'

