module V1
  module BolsaFamilia
    class StatesController < ApplicationController
      include RecordNotFoundHandler
      include BolsaFamiliaCommon

      private

      def ranking
        Rails.cache.fetch("bolsa_familia/states/ranking/#{year}") do
          ::BolsaFamilia::Payment.state_ranking
                                 .by_year(year)
                                 .ranking_order
                                 .as_json
        end
      end
    end
  end
end
