class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.31.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "3cb89019b6e24d9103b14a2ac79c7d3f82d8300f376320abeb0cd54a1c21ec0a"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "0997119bcdf53a68e7a8f22b5b43e2f9f3fb6bb05f1407445f0b82d95a268b3e"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "ab35bdfcdd98b5cfc2c0a91abcd86dcebb1b5e9362e7303d59ec8a62db69c1d9"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "7ece2a1d73ed3731681f854bcfc68acea0f236b99969370b6830ff1ed6b65281"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
