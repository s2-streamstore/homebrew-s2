class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.25.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "3442feb9d943b59e2b5d30fd1451e4e5e942122da9d0fe1985ba56b0bee8dadf"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "9de5b942f1e9450fe8e0f7be786019a4cb366293704deb0df952e26e4d4f81ff"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "90adc922b63ce2f21f1dc2601938f411f5cac67124be8c08e40e8373f918d7bc"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "5e8ac9a91cf7a15639b57571df559328a11c9826281071dc7cc9147c29c309ae"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end