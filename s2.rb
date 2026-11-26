class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.51.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "1cc59efc5b9fa784e26ad47aa2bbe5cd1c4e9f83c5b283f55c186f399acf8653"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "2f5020ba9ff895a635ed764d51312830bb1045b628d52e7e30e703b0202ff3e1"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "7c3d3442f87e21f8de68d924402a3068bf8f297709097a843f163a52b6949968"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "cfba6dba73260781833d5297ec706d9ed0250fbc13b6e17a78c0cc13e0ba1b2f"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
