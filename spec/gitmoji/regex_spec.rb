# frozen_string_literal: true

RSpec.describe Gitmoji::Regex do
  it "has a version number" do
    expect(Gitmoji::Regex::Version::VERSION).not_to be_nil
  end

  GITMOJI_REF.to_a.each do |gitmoji|
    it "matches #{gitmoji}" do
      expect(gitmoji).to match(Gitmoji::Regex::REGEX)
    end
  end

  describe "regex.rb source template" do
    let(:template_file) { File.read(described_class::Reference::TEMPLATE_SRC) }

    it "has the template token" do
      expect(template_file).to include("REGEX = Regexp.new(\"% gitmojiRegex %\")")
    end
  end
end
