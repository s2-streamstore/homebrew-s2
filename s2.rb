class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.26.3"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "3b945a548a7e8ace782667596593a9cc0b29448cb3c4c14b3424fa26243d484f"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "4856363da51c8f090d13cf98b33cb8389eadb1cf62bacce338b420599156a0ae"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "5eb2241b4cdd043061807e85373a1ab60a2edbc52f8e2f71e899641b5783e48c"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "e5ed7af46431371bab48ac81fe64d29a412ead36414bb69aa66d033a979a84ce"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end