# frozen_string_literal: true

module B3sEmoticons
  class Engine < ::Rails::Engine
    initializer "register_emoticons" do
      emojis = File.open(root.join("db/b3s_emoticons.json"), "r:UTF-8") do |data|
        JSON.parse(data.read)
      end

      emojis.each do |emoji|
        Emoji.create(emoji.fetch("name")) do |char|
          emoji.fetch("aliases").map { |a| char.add_alias a } if emoji.key?("aliases")
          char.image_filename = emoji.fetch("image_filename") if emoji.key?("image_filename")
        end
      end
    end

    # Enable asset precompilation
    initializer :assets do |app|
      app.config.assets.precompile << "b3s_emoticons_manifest.js"
    end
  end
end
