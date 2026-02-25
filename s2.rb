class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.10"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "ab1a3ef6c5d6b5a6f108492cac6fc1b08d49017e37428c9888dbc33ce95c49a1"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "ad0f11e9fc7ca83389d9a2014b03a1fc91127e5f1b1aa9701c85d6349a61a5ed"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "fc305bdce11129df956b0b5b345b512d5d4da10ead4477070808420a0143e6ed"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "f59b83635fad8cceacf6ffa68cfed9947cb04a8dfb554295e8d6e0bef27793b5"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
