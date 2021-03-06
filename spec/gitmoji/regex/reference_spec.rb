# frozen_string_literal: true

RSpec.describe Gitmoji::Regex::Reference do
  subject(:instance) { described_class.instance }

  it "Cached reference has all gitmoji" do
    expect(instance.to_a).to eq(["๐จ", "โก๏ธ", "๐ฅ", "๐", "๐๏ธ", "โจ", "๐", "๐", "๐", "๐", "โ",
                                 "๐๏ธ", "๐", "๐", "๐จ", "๐ง", "๐", "โฌ๏ธ", "โฌ๏ธ", "๐", "๐ท", "๐",
                                 "โป๏ธ", "โ", "โ", "๐ง", "๐จ", "๐", "โ๏ธ", "๐ฉ", "โช๏ธ", "๐", "๐ฆ๏ธ",
                                 "๐ฝ๏ธ", "๐", "๐", "๐ฅ", "๐ฑ", "โฟ๏ธ", "๐ก", "๐ป", "๐ฌ", "๐๏ธ", "๐",
                                 "๐", "๐ฅ", "๐ธ", "๐๏ธ", "๐ฑ", "๐คก", "๐ฅ", "๐", "๐ธ", "โ๏ธ", "๐๏ธ",
                                 "๐ท๏ธ", "๐ฑ", "๐ฉ", "๐ฅ", "๐ซ", "๐๏ธ", "๐", "๐ฉน", "๐ง", "โฐ๏ธ", "๐งช",
                                 "๐", "๐ฉบ", "๐งฑ", "๐งโ๐ป", "๐ธ"])
  end

  describe "#compare_src" do
    it "Cached source is current" do
      expect(instance.compare_src).to be(true)
    end

    it "detects change" do
      allow(File).to receive(:read).and_return("a", "b")
      expect(instance.compare_src).to be(false)
    end

    it "reads files" do
      allow(File).to receive(:read).and_return("a", "b")
      instance.compare_src
      expect(File).to have_received(:read).twice
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
      allow(Regexp).to receive(:union).and_return("a", "b")
      expect(instance.compare_json).to be(false)
    end

    it "calls pattern" do
      allow(Regexp).to receive(:union).and_return("a", "b")
      instance.compare_json
      expect(Regexp).to have_received(:union).twice
    end
  end

  describe "#write_json" do
    it "writes" do
      allow(File).to receive(:write).with(described_class::GITMOJI_PATH, anything)
      instance.write_json
      expect(File).to have_received(:write)
    end
  end

  describe "#write_src" do
    it "writes" do
      allow(File).to receive(:write).with(described_class::LIB_SRC, anything)
      instance.write_src
      expect(File).to have_received(:write)
    end
  end
end
