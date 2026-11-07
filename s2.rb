class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.44.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "35210369bbee3929b83065b7b042b9cff046023800fa3e28a087026bba920abe"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "f908d9bb3f0df664b44532c2b7b4ed991a13e90c7c717abf5a67acf044f44eea"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "5b54e9d231ae2824ef4fcdecf9b136ce680968afdf0afda0fc9dd593c582bc3b"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "51e13fb4584ca5124e2c72def708e665a13e3f11f4fa6ff84234263b01c26f4e"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
