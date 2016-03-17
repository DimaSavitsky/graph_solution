class DataContainer
  require 'csv'
  require 'json'

  class Plan < Struct.new(:name, :id, :values)
  end

  def plans_json
    result = {}
    @plans.each do |plan|
      sum = 100000
      result[plan.name] = plan.values.map do |key,value|
        if value
          percentile = (100 + value.to_f) / 100
          sum = (sum * percentile).to_i
        end
      end
    end
    result.to_json
  end

  private

  def initialize
    @plans = []

    CSV.foreach("public/SeedData.csv") do |row|
      if row[0] == '.'
        row[1..-1].each_with_index do |name, index|
          @plans << Plan.new(name, index, {})
        end
      else
        key = row[0]

        row[1..-1].each_with_index do |value, index|
          @plans[index].values[key] = value
        end

      end
    end
  end

end
