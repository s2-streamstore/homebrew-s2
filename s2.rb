class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.36.7"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "2dd3de894fe239e4f2d3e976df1f0a17cdb0201f32adfcb67564673b655a904c"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "99ed2a23cfbdd5537215d4506633c2b86162a3dec4f0dfbac9341c5717defaba"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "4cd0bef6b1aa308ff528086d543a88407ef042f207ac8c20f49bab3f39b963e8"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "fd70275b99acb89652dca69cdc22dd04037a0b378f721af3b5f312fa68c16c5e"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
