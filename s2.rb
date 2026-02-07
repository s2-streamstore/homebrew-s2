class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.28.3"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "4dc37e52196197ef9d1ae2e543722e6598412eb385e6cfe021aa807802de9821"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "5982e7ec430db3ffa51035dbaee2eb8481686619aad0b56083e842a3792a062f"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "5f0a56fcd8ab1a609878c4d143f98bdb0962a54e15113ba87bf5351f9c017aa0"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "a5fc2fc6443a485a82a5d859be2b477be300231da73391b13c47b227909e8cce"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end