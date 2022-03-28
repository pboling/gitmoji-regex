# frozen_string_literal: true

RSpec.describe Gitmoji::Regex::Reference do
  subject(:instance) { Gitmoji::Regex::Reference.instance }
  it "Cached reference has all gitmoji" do
    expect(instance.to_a).to eq(["🎨", "⚡️", "🔥", "🐛", "🚑️", "✨", "📝", "🚀", "💄", "🎉", "✅",
                                 "🔒️", "🔐", "🔖", "🚨", "🚧", "💚", "⬇️", "⬆️", "📌", "👷", "📈",
                                 "♻️", "➕", "➖", "🔧", "🔨", "🌐", "✏️", "💩", "⏪️", "🔀", "📦️",
                                 "👽️", "🚚", "📄", "💥", "🍱", "♿️", "💡", "🍻", "💬", "🗃️", "🔊",
                                 "🔇", "👥", "🚸", "🏗️", "📱", "🤡", "🥚", "🙈", "📸", "⚗️", "🔍️",
                                 "🏷️", "🌱", "🚩", "🥅", "💫", "🗑️", "🛂", "🩹", "🧐", "⚰️", "🧪",
                                 "👔", "🩺", "🧱", "🧑‍💻"])
  end


  describe "#compare_src" do
    it "Cached source is current" do
      expect(instance.compare_src).to be(true)
    end

    it "detects change" do
      expect(File).to receive(:read).and_return("a", "b")
      expect(instance.compare_src).to be(false)
    end
  end

  it "Cached source is current" do
    expect(instance.current_src).to eq(instance.next_src)
  end

  it "Cached pattern is current" do
    expect(instance.cached_pattern).to eq(instance.fetched_pattern)
  end

  describe "#compare_json" do
    it "Cached reference is current" do
      expect(instance.compare_json).to be(true)
    end

    it "detects change" do
      expect(instance).to receive(:pattern).and_return("a", "b")
      expect(instance.compare_json).to be(false)
    end
  end

  describe "#write_json" do
    it "writes" do
      expect(File).to receive(:write).with(described_class::GITMOJI_PATH, anything)
      instance.write_json
    end
  end

  describe "#write_src" do
    it "writes" do
      expect(File).to receive(:write).with(described_class::LIB_SRC, anything)
      instance.write_src
    end
  end
end
