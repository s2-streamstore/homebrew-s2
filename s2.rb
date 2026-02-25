class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.13"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "fc844ec04bfae95a82ccc50ebe9668450bcef45dac0b40f1b7558b5464960740"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "9dd241889980d1967d3d28065b1b1aa443715162ca5c703ffd485f39d9d780ac"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "86d816b65cdd855105c4e6acba05281302ef036f3a07e58ce851b89f65bfc226"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "71059cd5482cfc8f1c3a90d357d3a16ee48e1cba87653f7204d01113baa3bda1"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
