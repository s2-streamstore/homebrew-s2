class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.8.3"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "c2c5a1fe4e5ed139dc88753434c1d02c299ca750cd5856a1caa2bf022b57b4b9"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "5cf743a4f9cd7f6966f8bf978c3264ff8c756ca7624af0884f74068fe0e5954d"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "7dd5e0c46daf24b00c5df9aa0ae4f69be2e3292a8b3dfea06d85ff83a1eb905e"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "dc7d533dda9010cfac6e9e14fb0b321689641d092bb7f5d3d08b13b8b7c15598"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end