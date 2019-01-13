class Test
  def initialize(file_name)
    if File.exist?(file_name)
      questions = File.new(file_name)
      @questions = questions.readlines
      questions.close
    else
      nil
    end
    @amount = 0
  end

  def run
    @questions.each do |question|
      puts question
      user_input = nil
      until user_input == '1' || user_input == '2' || user_input == '3'
        puts 'Введите 1 - Да, 2 - Нет или 3 - Иногда и нажмите enter'
        user_input = gets.chomp
      end

      if user_input == '1'
        @amount += 2
      elsif @user_input == '3'
        @amount += 1
      end
    end
  end

  def result
    @amount
  end
end
