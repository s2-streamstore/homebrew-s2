class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.11"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "54ff52ff0c17e21d036be23430fd7c3d72a14ba5032ced053e197675c4301ea2"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "b3281ef34f39aa931f54ff850e81314e6675e9382d6444cda589ef8484e791fd"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "139c90dc7dadf80a3bac5cf16a09095b7562bf593e392f238992968a0549fda8"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "95f33be3e26c82c08dce49b10feebbac14f6fa24508f2ddfa46fbe971d0a602e"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
