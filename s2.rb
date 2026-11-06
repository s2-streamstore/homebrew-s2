class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.44.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "2476bb2f0830613c9f0738d332492ca1f54a1ba5f0cd8322f0e26f529ce5bb9a"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "b155f60f768ada4abcd68f84f2058434a08c3f8daae39725a123ed1a776c7fda"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "80f866cda16632d6903aab3cf526470e2e2ef11ce3b59ba47e2b11b17489d0b5"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "b0f9d411a44f44cc9813be880b9f7c2b2eba2976207715b89a46e92ac20f69dd"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
