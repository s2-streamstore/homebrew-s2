class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.42.6"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "da69cd025b175948a2535a33a7a695d1243ac979717b0f58255b0fc2709e4994"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "1be67d6cdd1e4e96803a140c3f2a2ec3b3532d23939b3e8d833c38220b05aab6"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "4c3b7d2622440d184dfb0daee58b204543859fbab3dbfc045224d571e3dd55e3"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "eb2c5f7c0e9c650df3e81c1b9299fa39ee01b232c0bd5b98d3795e4aa9278ca9"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
