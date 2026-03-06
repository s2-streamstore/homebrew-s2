class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.20"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "d6847df9f4ff8003b524752bfab392263412b3c4785f6bca4b1802acdc2c92a6"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "628dafd5366f772efdc458955fdd2ce10e00a1085a1a5953a0040117de342f75"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "385a83f0f2181b2892a40a704acbdcf0013d79543c678d4825bcd1d3fde6133c"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "4aa37dc2979eacbf0807e8b5c4738c3b8240c86fdc6e0c67d5f6e6e44416dea4"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
