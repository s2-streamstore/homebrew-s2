class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.30.5"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "026a44bf07001dd551980bff9dc967d062d26e368ce8a30a4cf6fe145485d530"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "718a2fec03f061c5d522ef51e4fc331a9e9612290e64205b6726ef17e8b60c00"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "e7f0db5ed8413267c73e633d8cdf525ca28cd478b09eb01c700d69dd419c4a8b"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "04eda6c0884fec76825237baf4718558a547a0a7f3505c03950620ec86ce282e"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
