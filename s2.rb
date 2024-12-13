class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.5.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "013a522796dd603f959b035779d88ac618a0ebc89b04fe9f1d663922d8923e21"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "5899c23edfcef41af7c3a2eb6801f03d7af12c949a54a33a5c06ba6a02be72c6"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "bd8807ae4e572617c2d3c06ea4414cd3203df7629d50a60dbd2d00860629f132"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "5b12a5ef79a25d9d22841d6d2ccdc9f769fb8433f01e2581fba893d72f4f5f9f"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end