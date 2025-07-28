class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.21.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "8ab5461b44e24474d4975e0406d007d32bda2a7d39dea441a114adc1713834a6"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "0d69e37850319e52cb7491433e581d0fdb177bde373291ead7599191b462acf3"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "aa7182741a0db7e093eb078ebba47ea23fddb6eac14e4f76d36a14df24ce0d4c"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "36075633f186a4eeac60bcd7fa7d4e02dd867ac4f152d9ac6816c8f6688a0a69"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end