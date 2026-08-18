class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.42.7"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "ba32b87427424a584971d158bddb475cebf8936b2eb0ab51a1876cebe76bdb8a"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "f45b7c348429234b7b1347ff4d29cf510f9ecbc10c50e79809a8343d061f16cd"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "824e5c5236d12018fec37551cc223b5b48a472928c8d79f63b81e29b9a61a105"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "cfb5cfbaaa3987bb21aa16a0bad8380bd75786684a29e9f7dae1e5533cb12fd2"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
