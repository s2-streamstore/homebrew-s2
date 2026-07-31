class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.42.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "76a7e80158317178958211501b4b3fa4b2181f0a946fcf6bd2c1a3201d603e77"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "fcb4954c837ec29bb4526895d6003c292d21c72620ea610a9972a318fe255e3c"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "f78a60d4a01fc80a69858ca71f3aed92e1adc1e1b28062f9a7a9c8465f56490c"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "4b23dfbd98fd4035138bcf4540aee5557f9c09c372492fbb0a607e372da28a56"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
