class ResultPrinter
  def initialize(name, file_name)
    if File.exist?(file_name)
      answers = File.new(file_name)
      @results = answers.readlines
      answers.close
    else nil
    end
    @name = name
  end

  def print_result(amount)
    puts @name
    puts "Ваш результат: #{amount} балов"
    if amount >= 30
      puts @results[0]
    elsif amount >= 25 && amount <= 29
      puts @results[1]
    elsif amount >= 19 && amount <= 24
      puts @results[2]
    elsif amount >= 14 && amount <= 18
      puts @results[3]
    elsif amount >= 9 && amount <= 13
      puts @results[4]
    elsif amount >= 4 && amount <= 8
      puts @results[5]
    else
      puts @results[6]
    end
  end
end
