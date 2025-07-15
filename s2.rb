class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.19.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "9b0f19edb75552a991ed9c9f10b6b9dd7cc7ab20aa4c8567a31ab6ee1c4d8034"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "e55a782363baf934d830a3c91592efb765ee79c46649dc46bc4308f0d9c4bc0f"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "afab2f3b0034a554d42f6d16f7408125f9e5f421892d9c43b94e80493771f898"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "fbceea0beefd38fb206e5e19c3787d983d482fc70458a5b1a6910ae948632458"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end