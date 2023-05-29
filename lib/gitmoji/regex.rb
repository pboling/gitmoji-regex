# frozen_string_literal: true

require "version_gem"

require "gitmoji/regex/version"
require "gitmoji/regex/reference"

module Gitmoji
  module Regex
    REGEX = Regexp.new("(?-mix:🎨|⚡️|🔥|🐛|🚑️|✨|📝|🚀|💄|🎉|✅|🔒️|🔐|🔖|🚨|🚧|💚|⬇️|⬆️|📌|👷|📈|♻️|➕|➖|🔧|🔨|🌐|✏️|💩|⏪️|🔀|📦️|👽️|🚚|📄|💥|🍱|♿️|💡|🍻|💬|🗃️|🔊|🔇|👥|🚸|🏗️|📱|🤡|🥚|🙈|📸|⚗️|🔍️|🏷️|🌱|🚩|🥅|💫|🗑️|🛂|🩹|🧐|⚰️|🧪|👔|🩺|🧱|🧑‍💻|💸|🧵|🦺)")
  end
end

Gitmoji::Regex::Version.class_eval do
  extend VersionGem::Basic
end
