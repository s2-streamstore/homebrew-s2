class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.35.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "1e8ef95e29c751e5541c57e79ef7033b93e45cc0e76099940255726706f440ab"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "a3584c5e3055313f96c55b297d007f7c7df1f3bd845e5d180604d12ae1ea11e0"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "8fcb23958b1b8eacdd682dd16134bb0142c16c3fc32ecec43b24c00bb834aae4"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "d04c8e8f1a0cf64594b59d92ccf5ea3a46d6f8bd58820ff9edf8bd0aecf205d1"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
