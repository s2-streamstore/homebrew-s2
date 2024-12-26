class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.7.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "a3fa1610ac563422092ed7d489bc1328075159b0ea598bcfe72c70ba05527f6c"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "591b15cbe950a2212b254f1a02a73a1833118f54eda60234e98aa3ecb15ddab5"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "6619ab93955598b3972554e1615b5d847d6d49c3e20726cca5533da6befa50dc"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "01a9cec34fe7bc17e9f3b338413182b85dade46e6d3d0672cfae8cd9b8b8fd3e"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end