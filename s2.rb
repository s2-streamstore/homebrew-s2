class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.6"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "c0dcf78f1b8e009c89533742dbd11ebb793559f467955039b63db7f2f2a68a4d"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "18596b554cb893dd7defbe01a6bc4494b397ea569fd988059c5d73cc315ce483"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "808ba5a7b088e7fe7d3f9a7f2e37ef3a86aa3bbbbfe7f335322874a0596103d0"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "8f28dc080a0093c88e3d7bc05ae8c3c9b52b4cc670f16703048b015d7435a50b"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
