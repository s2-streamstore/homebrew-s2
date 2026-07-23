class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.41.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "a3a8dbe7955b28fbbcc0f55ecc306abba97a0be73c8f6e9bb56b0fb2fd7cefb9"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "3714d7b7de080820922a6458a3691016d415a38da0623151b6222bd72abf7948"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "cc68ec4601e0aaf0b2c47c341d3d77d99b534862438a8a41f6b9ca43f75ebc55"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "c75a237791c76a81371f46f366fa56fab5ad5f8c4a2cfa73d40459add33c6586"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
