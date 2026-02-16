class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.3"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "49d81074fe8e276ca5c755b1f58fdd6997d170faf9c2eeec42dc9b1b905fe5cc"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "8a14216ac12c7300a3a2417b47f813cd03d63d83e05a3e3e4476ad5401815dca"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "7a3339db4e995dea4da420361006626bdccee1a67057661368eed33f794d627a"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "6ce24b0e45f09a7693339cea0ff717c7039afd320824f0d8f3f1e0911584cfd1"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
