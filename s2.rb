class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.42.5"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "24c6aa66eb8ae40109ed4063f8f4a519bd6abb62f067a27c284842abc23d10da"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "271a11b11763b84939447038cc777be606a82951ab0a6ececcd5e60b41f48393"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "9066d03dfbf8f995b06fa4cd7d8c80acc2bf8762f2973f51759e1525dd6883dd"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "a00041e25dcc77e2a6296e19802403ab4f10fe26247278f8cf79e24c5314ead7"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
