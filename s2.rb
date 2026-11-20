class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.48.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "5d1e088dd337ff7bb1a0b03ad2dbfb33d9d27177df948543c509aa92870cf253"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "62d03ab47a38f90fadcd3b431701ca0121e1e0403a60f0b3b7ba66dd3ffafd64"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "f3f3c1f03131e4e03352230c7d6ecc67994a6e2ae1fe27acf9f54b576e2ec8c9"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "755c7c90e8b55cc0796777aefd107f0ebfdde9086f49f73416bac43d4121f02d"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
