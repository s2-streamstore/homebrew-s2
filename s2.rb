class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.39.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "acd3a26715772e31d1b5e9f49d8b6b79d1adf9e98d040bcae556dbeb39fcd641"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "8981e3b2e9a01c0d25602dd3a6d47c526eed1ddaa21e0b0556737d1d7edc3a37"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "3f17706dbfc3d4da9f0d1b1f69d0361d6c85e60e87c6f35c3ba2f31eb8426476"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "5a062d81d1b770e67b31bc2ce14b6e9288c0ac69feadc91e160c33d2ccbe4aa5"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
