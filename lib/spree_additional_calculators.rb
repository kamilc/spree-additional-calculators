require 'spree_core'

module SpreeAdditionalCalculators
  class Engine < Rails::Engine

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
      initializer "spree_additional_calculators.register.calculators" do |app|
        app.config.spree.calculators.shipping_methods = [
          AdditionalCalculator::WeightAndQuantity
        ]
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
