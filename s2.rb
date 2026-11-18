class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.46.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "19eca6b109feb37f1dee17e07b46b1f21756472e7e7b7674387f9e37e21b2035"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "354605c9ff83de9aca5bedf0aff1ebe443308215ed7cd19dcaaa018e32d3683c"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "b0002baeac51b0886c2e8feb257295b2f77a16e0599575cec6acd7c3397075b2"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "fc3c164f57e40868e86b44219d61503dd7fe3fe64f8c732233962ec52091992b"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
