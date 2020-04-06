require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    (@number ** 2).to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    result = ''
    @number.times do
      result += @phrase
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i # remember to format numbers when assigning to a variable
    number2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      return (number1 + number2).to_s
    when 'subtract'
      return (number1 - number2).to_s
    when 'multiply'
      return (number1 * number2).to_s
    when 'divide'
      return (number1 / number2).to_s
    end
  end

end