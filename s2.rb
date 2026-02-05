class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.27.4"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "fc1d86fa3b51da1ca4c88ee872629fd979d631e7dba5a32416518b1f71be10e0"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "e8f84bab6c12b9e24cd0e53f6c8c9ae3272070ac571e2571c60ebf0f08ca8609"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "fccc88929ec0020e17c0bcdf44df1cc3857a5c3ae10b6765df4efb514673a623"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "2ae00ba4438d0e931d2a8ec1deb727f00f7c14406d87ac041f665dd898a74e60"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end