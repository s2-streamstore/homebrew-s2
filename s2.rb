class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.43.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "c32c2f446a47f7fbd3e4b48c6122ba462f05ad6a2925f9e81c524a6a406d1183"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "b885e1e7c9ab6b18a732a5c561e7337503a5c570702daf8ff04981fb5ce3d021"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "4c6794fd8061fe51a4217ddaa41860703a2d80a0fae576e8deced377f51294ca"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "f666b907b9f48746611a8c98de1d69614c33f8f7133b497de3b8a49b2c87ac62"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
