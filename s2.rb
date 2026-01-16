class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.23.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "663171b7e7b02a85c82866c8431aa34d08bca9ede70e1bfca7b62532eb0aa63e"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "fd5f9104cc674312d36dc9226edc36cfc07013d7852b4a2ea2bbe2fe1e3f37b0"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "cfc368ec887ac8d3fa7a391a669168dd602e5e65853b376b1e2d1fae73b86bf6"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "ebb0f0ccdb470084d85c6325009ac8fee623acd40d77483316372fa4d184a027"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end