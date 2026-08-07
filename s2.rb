class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.42.4"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "e4de602129bce4af613d1d4b5f6833c3be4576e4f103ae13d9473a2bc53e343b"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "26c8a8cace8810ffec6d4a672fad00919b7a3665eff0a8e305cd902023f7cbbc"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "f48b0a842fe07fd001370daa691ceb455aae41ee723eb12ee2816606d8983598"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "8ae366ee6b3d2ee3c033dc3333cbc38e5e2de4a4102f1fa9603f06f9b83e3a9a"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
