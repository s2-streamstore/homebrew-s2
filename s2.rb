class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.30.6"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "9381d9ee56f85d55905182048459d1080bf89f95253cfca27e73f3dcbf353642"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "06e76b5052d7596508c51c10a071124e90e3b6a132c1cad6ff415ae2526254b7"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "0abec808e203388cbdd43ba2b65d1003abe1ad1b0e95e66526e1bdc9999c1bf0"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "96aee6e2736a54cb2f35277844f52850a8ca9f4ca9c4513396074eac788d0086"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
