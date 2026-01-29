class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.25.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "2770a81a529dd62836011a13378260995005f902ddaca68f135c1a01813861a9"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "b40b28b221ffed0e8619b0157c4937e9ba232fd872f41409fe9a2fc19b5ccbb3"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "18c61c46375c48581c43a14ba6565c4cdeeef11db3f4f07a02881f0119b7133a"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "a6761329dd3d3e8f30f1869c0be8e2663a74106ccd47b8772d8a4e410aa63163"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end