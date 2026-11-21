class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.49.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "f8fc96183d0fab4a4c4aca153ff0a638324f4e6d41627e4a483f225c61728d0c"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "b2861f19a771fb69b9f3614987b57d25f6e1b1b2a15685d342f0ea9349412b3f"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "e81d5a3597b90565b891d0cc97c68c7a3647bcdd46c2d4721445451e5e9c13ef"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "ad3598c2899c0a230b6f848164b66112ddead1acbc1da46ef51b930f861fdc17"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
