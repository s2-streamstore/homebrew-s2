class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.39.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "391fddc027616f2e3af4a9fc1df2eed0cf6418831b7dfe605d977556ddb9b070"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "9723fb3a8a62d3d749b170aa23523d4096dd834dd0cfffa046aea5eb136dfae3"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "5b7ba047305d7ed4f7a65e1d4fe49573ca8d95f3866609086653d8607ea5b439"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "93c5ab9bda510d525feba853d04a33a35af4396a07bca91ad71c9f9e413aa4d0"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
