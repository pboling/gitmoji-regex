# frozen_string_literal: true

require "singleton"
require "http"
require "json"

# Download the list of all possible gitmojis from the project's github repository
module Gitmoji
  # Regex provides the namespace for this gem
  module Regex
    # Reference provides utility tools for maintaining and testing this gem
    class Reference
      GITMOJI_REFERENCE = "https://raw.githubusercontent.com/carloscuesta/gitmoji/master/src/data/gitmojis.json"
      GITMOJI_PATH = "src/gitmojis.json"
      LIB_SRC = "lib/gitmoji/regex.rb"
      TEMPLATE_SRC = "src/regex.rb"

      include Singleton

      def compare_json
        return true if cached_pattern == fetched_pattern

        false
      end

      def cached_pattern
        pattern(cached)
      end

      def fetched_pattern
        pattern(fetch)
      end

      def compare_src
        return true if current_src == next_src

        false
      end

      def current_src
        File.read(LIB_SRC)
      end

      def next_src
        template_src = File.read(TEMPLATE_SRC)
        template_src = template_src.sub(/% gitmojiRegex %/, pattern(fetch).to_s)
        template_src.to_s
      end

      def to_a(body = nil)
        body ||= cached
        json = JSON.parse(body)
        gitmoji = json["gitmojis"]
        gitmoji.map { |g| g["emoji"] }
      end

      def write_json
        file = File.write(GITMOJI_PATH, fetch)
        @cached = nil
        @cached_pattern = nil
        file
      end

      def write_src
        File.write(LIB_SRC, next_src)
      end

      private

      def pattern(body)
        Regexp.union(to_a(body))
      end

      def fetch
        @fetch ||= HTTP.get(GITMOJI_REFERENCE).body
      end

      def cached
        @cached ||= File.read(GITMOJI_PATH)
      end
    end
  end
end
