class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.32"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "cbf3f1b372ea05823232a85fe948ba57ea52e68cfde981b22540d1b988f3e83d"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "939893fbed43d8d38d386b509e6f81b650f8f599a17c9f198c32169246427d83"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "1d1867e776873d51f1f6ed39daa433ab1dbcfb893dc57cbb4ba975c7d29f7c4d"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "ad0faf4d7e912b2737c930671f41175a0d50bdc9e791d35954ace73a2a2d0bb3"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
