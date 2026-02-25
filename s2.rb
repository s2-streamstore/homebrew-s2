class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.12"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "1df4cae3f75cfe5204dde262b0c2110824978789992077f0cad465e453e92751"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "f6f10bdc312577ff4a157145dbdbf1686c6bbb3329754341c5a37335629bcb42"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "b1516e373859850464284babff5038108b9e1096864f032df050b0d71506af56"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "d5a2ca8e7a60e4534841d134f1bc0e46c5cb05270bdadd5babfb7bc30c2fca20"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
