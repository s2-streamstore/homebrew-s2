class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.42.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "991df15c145e719b4cb33317be623fbbd93aa8090295675deaddca304f23973e"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "a3a86bb3b3bee11c6af27990668d4f7b95a09167bc63178c8a18de24710e801e"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "22a2abf6756005d4630b9374d8102d362f530d01be1d9d4073dc6c08f8b3c356"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "3157cbc8fff426dda0bb82205e25a049d62922e14e93a1eb1670211c843276e9"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
