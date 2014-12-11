module B3sEmoticons
  class Engine < ::Rails::Engine
    initializer "register_emoticons" do
      emojis = %q{
        big-smile blank-stare blushing butthurt crying deal-with-it doh evil
        eye-roll fml good kisses licking-lips mad nerd sad tongue-out
        toothy-smile upso warm-smile ziggy
      }
      emojis.split(/\s/).each do |name|
        Emoji.create("ziggy/#{name}") do |char|
          char.add_alias name
          char.set_format "gif"
        end
      end
    end
  end
end
