class OpenAiRequestService
  # TODO: 引数を受け取って、自由にメッセージを送れるようにする
  def self.call
    # TODO: initializerに移動する
    client = OpenAI::Client.new(access_token: ENV.fetch("OPENAI_API_SECRET_KEY"))

    # TODO: specを書いた後に、関数の抽出を行う
    response = client.chat(
      parameters: {
        model: "gpt-3.5-turbo",
        messages: [{ role: "user", content: "おはよう！"}],
        temperature: 0.7,
      }
    )
    # TODO: レスポンスは仮のもの
    puts "---------------------"
    puts response
    puts "---------------------"
    puts response.dig("choices", 0, "message", "content")
  end
end
