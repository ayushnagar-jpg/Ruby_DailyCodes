require 'rspec'
require_relative 'weather'


RSpec.describe WeatherForecast do
  describe "#get_forecast" do
    it "returns parsed weather data" do
      api_response = { "temperature" => "20°C", "condition" => "Sunny" }
      allow(WeatherForecast).to receive(:fetch_data).and_return(api_response)

      
      forecast = WeatherForecast.get_forecast
      expect(forecast).to eq({ temperature: "20°C", condition: "Sunny" })
    end
  end
end