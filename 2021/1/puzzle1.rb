input        = File.read("#{ File.expand_path(File.dirname(__FILE__)) }/input")
measurements = input.split.map(&:to_i)

previous_measurement = measurements.first
count                =
  measurements.count do |measurement|
    (measurement > previous_measurement).tap do
      previous_measurement = measurement
    end
  end

puts count
