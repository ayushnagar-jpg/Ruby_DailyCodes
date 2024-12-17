class WeatherForecast
  def self.fetch_data
    {
      "temperature" => "20°C",
      "condition" => "Sunny"
    }
  end

  
  def self.get_forecast
    data = fetch_data
    {
      temperature: data["temperature"],
      condition: data["condition"]
    }
  end
end

