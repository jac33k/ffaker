# encoding: utf-8

require 'ffaker/address'

module Faker
  module AddressCA
    include Faker::Address

    extend ModuleUtils
    extend self

    def postal_code
      Faker.bothify(POSTAL_CODE_FORMATS.rand).upcase
    end

    def province
      PROVINCE.rand
    end

    def city
      CITY.rand
    end

    def province_abbr
      PROVINCE_ABBRS.rand
    end

    POSTAL_CODE_FORMATS = k ['?#? #?#']

    PROVINCE_ABBRS = k %w(NL NS PE NB QC ON MB SK AB BC YT NT NU)
  end
end
