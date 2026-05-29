class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.36.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "85933b2150edab50f340640742a5bf617062388a2342ca3788f48978d6e9d5cf"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "ccc50cd39869c9e50453f38bd27e22a0d08eeaf40e620b225f84f18fd14881fd"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "77b9e3d5275746bf65a61d85b5d217bfc8c6afc5eb34c244275969f7ab5e2252"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "d792d3f7df41f786a0ae6a908036fefd8f3d5161a5a83a26b9d9ef779e57791e"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
