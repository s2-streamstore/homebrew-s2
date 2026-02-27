class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.15"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "07e35c647cc7522be28b0e01231d160552cdbb8816b8a15033f3b0a9e504d7e5"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "263c2c68e34ce2433f34e7d35886d2f118352922efc5577af57a80e2f9838eb1"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "d4933a6e4e2e888332916f4d43d31180cc9471f445e1aa5022a52a8e856d2a86"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "18ac1b6bb2e973966feb1faac1bf6809d0c111eb9b9b1b2a5c9207c8c6cdffda"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
