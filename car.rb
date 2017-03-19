class Car
  attr_accessor :color, :wheel_count, :start
  def initialize
    @start = false
  end
  def horn
    puts "BEEEEEP!"
  end
  def drive(distance)
    puts "I'm driving #{distance} miles"
  end
  def report_color
    "I'm #{color}"
  end
  def start
    if @start == false
      puts "Starting up!"
      @start = true
    else
      puts "BZZT! Nice try, though."
    end
  end
end

my_car = Car.new
my_car.horn
my_car.drive(50)
my_car.color = "purple"
puts my_car.report_color
my_car.wheel_count = 18
puts "This sweet ride is sitting on #{my_car.wheel_count} wheels"
my_second_car = Car.new
my_second_car.wheel_count = 2
puts "This sweet ride is sitting on #{my_second_car.wheel_count} wheels"
my_car.start
my_car.start