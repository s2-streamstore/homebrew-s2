class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.28.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "b5204af60851979d1da49bb49f53b7ecb070f1a960a2499ed3f4ffb3be50a18f"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "4f79759ad51e3d946b3788f2382cf0b17266173d85cc04f6f50cb438084802f6"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "db07f4689ea8943a862146b7bfa9ef9955d92abe067ee7b12477e58aa7ecc190"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "fc718ff6e38d3483c47145d79dc67c0aa18ad571c5e1a9fed3d17a307d84eed3"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end