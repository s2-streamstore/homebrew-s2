class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.13.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "6bc1b8c166e14e649bfe9fddbe04449bd96a9383727cfba383647019f4b6eaa1"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "68c1d2dcf3a30ad4bb334417577f734ae6e1e799c999b2ed5f9d961db2f16c6b"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "7d42c8e11981128e7c90674a5f8c4791467548f20df8a20df5b854c8a387f1ee"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "3afe3fad2c8861b713ba27439f8ddb4ec93407f50ac78fb9844511f98d53f944"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end