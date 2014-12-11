module B3sEmoticons
  class Engine < ::Rails::Engine
    initializer "register_emoticons" do
      emojis = File.open(root.join('db/b3s_emoticons.json'), 'r:UTF-8')  do |data|
        JSON.parse(data.read)
      end

      emojis.each do |emoji|
        Emoji.create(emoji.fetch("name")) do |char|
          if emoji.fetch("aliases")
            emoji.fetch("aliases").map { |a| char.add_alias a }
          end
          if emoji.fetch("format")
            char.set_format emoji.fetch("format")
          end
        end
      end
    end
  end
end
