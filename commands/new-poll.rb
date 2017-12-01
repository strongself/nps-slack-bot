class NewPoll < SlackRubyBot::Commands::Base
  def self.call(client, data, _match)
    
    question = _match.captures.drop(2).join(" ")
    if question.empty?
    	client.say(channel: data.channel, text: "Напишите ваш вопрос в формате <newpoll Оцените, посоветовали бы вы юнит Mobile Speed своим друзьям>")
    	return
    end

	client.say(channel: data.channel, text: question)
  end
end
