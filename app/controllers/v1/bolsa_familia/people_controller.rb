module V1
  module BolsaFamilia
    class PeopleController < ApplicationController
      include RecordNotFoundHandler
      include BolsaFamiliaCommon

      private

      def ranking
        Rails.cache.fetch("bolsa_familia/people/ranking/#{year}/#{state}") do
          ::BolsaFamilia::Payment.people_ranking
                                 .by_year(year)
                                 .by_state(state)
                                 .ranking_order
                                 .limit(50)
                                 .as_json
        end
      end
    end
  end
end
