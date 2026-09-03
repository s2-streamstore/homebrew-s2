class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.42.8"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "86db2466dc55a1576d95919be0e0fa6e44703f774d2aa3a9a6ffd2bbf829b9ee"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "36114a64990045b3d37e48dcec954fa77c5894338cefad9a976c2b9ba6bb5376"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "8dadc3f7c192137cea24c70a84b0d70751d5184159da18062264e42805ad1efb"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "5342b04609f154d5fe5eef601dd7e7e6d64e81283dadbcea5fca492e311c4ff3"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
