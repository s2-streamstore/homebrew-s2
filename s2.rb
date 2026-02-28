class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.16"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "ef3e1ec27eca701afe9092c13e5107f84899aea9361f7257b3eaa4d14a5a47a5"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "9e3cc999539ff0e648eed0005eb5d23943b3eca4a35ff4b4151252eba7cef747"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "d05348ed46f89946ec5970d14ea621c6ed95f81e97193b115a277207cec65de5"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "1ad3f94f6310ed6f06a9daab21d96eea9351bc887f9dbcdef06d4ae0e05b2664"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
