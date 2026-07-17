class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.39.3"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "3e754b0216e627a7ea27545e949a3d6eadeed2cda183e1df5da224b3f655069c"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "51dd63802c109249332ddb5e659c8b7cf0de5aa3fa6788caf586de12db9ae314"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "7cfb28ff611f095f471e2faedd7e96d07e746039f846dd3a369118fe7c343a2c"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "467be450562402542cfc366543549b05b8b501a2ec8aa5e822bb57f60a92a0a4"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
