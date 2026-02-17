class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.5"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "b7718677e9a2073b05192cb72c28f6e8158873b6fe291b174f9e752b64d6eee0"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "ad11c146ac8a5adddf8e1b2a2e6819d217c2679290f4699c42d20ec9a5ff6008"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "ececef4d77080eb9cec9f408ae7d815b1824fa78edd8abf8f94a43ee217651c9"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "2c75354a405f2d5201a12371a21f9dfd8fc337ca793e75a0671f7bac888d9140"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
