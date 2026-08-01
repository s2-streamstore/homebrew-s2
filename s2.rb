class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.42.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "874f0c43f80bff90fda8394755187af9be2cf18379bb034ed2b0c1e713a2f800"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "47f21b5ba1eaaef831ab811a6894fcc7d16c97580508c1f8a2d234736137d084"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "87a46ff7f35391e1c37647e2cb9b24a06e839a4187e93063e48c19258a430dad"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "cc32ecd6fc75cd9e2a541139582b89057a1ef58a95e27808f5848bb3fabc9d1b"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
