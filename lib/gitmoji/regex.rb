# frozen_string_literal: true

require_relative "regex/version"

module Gitmoji
  module Regex
    REGEX = Regexp.new("(?-mix:🎨|⚡️|🔥|🐛|🚑️|✨|📝|🚀|💄|🎉|✅|🔒️|🔐|🔖|🚨|🚧|💚|⬇️|⬆️|📌|👷|📈|♻️|➕|➖|🔧|🔨|🌐|✏️|💩|⏪️|🔀|📦️|👽️|🚚|📄|💥|🍱|♿️|💡|🍻|💬|🗃️|🔊|🔇|👥|🚸|🏗️|📱|🤡|🥚|🙈|📸|⚗️|🔍️|🏷️|🌱|🚩|🥅|💫|🗑️|🛂|🩹|🧐|⚰️|🧪|👔|🩺|🧱|🧑‍💻)")
  end
end
