class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.40.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "b185b90d5783a7dec147e67666c959fe3b6ddeb2624d64890f6d1184a62208a7"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "f995ffa86e7455e68af96b02ae1a7000d1e8017f24d3496416b909ceeca880ce"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "ba056b1576a4810c2752238c232edd118055eff22b549285bbd7bd74b0ce70b5"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "d18efc45012215030c4ff0d319003e8b8902dc202fde32f23b86d9f3a1db52e5"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
