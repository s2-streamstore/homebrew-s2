class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.26.6"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "cacbcc6f83423abff3aba589529af68ef22624d134efb3fc3f3b82ff8fac24e4"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "5032ac5bb53cc8a7cd8903f82487654289d1d68f2bdaea2928fb420ae7a11441"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "e0acca6e6406c896c18ea026b63b1e1361278ed821fd170e0c8ef661e44a740b"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "766838d4f48515316a0e979f15241185834c2518ade3673053d8c7ddbc54664f"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end