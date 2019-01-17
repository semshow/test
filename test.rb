class Test
  attr_reader :amount

  def initialize(file_name)
    if File.exist?(file_name)
      questions = File.new(file_name)
      @questions = questions.readlines
      questions.close
    end
    @amount = 0
  end

  def run
    user_answers = %w[1 2 3]
    @questions.each do |question|
      puts question
      user_input = nil
      until user_answers.include?(user_input)
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
end
