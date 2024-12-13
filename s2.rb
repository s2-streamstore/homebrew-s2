class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.5.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "7eb19dc896b84982dc76a1e4e54f9d1d46ba4620c41535a6f43928c0aa5a0ff0"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "a8e5da3ef2d16f4c31ee2ebd1a031d0ca39b23a1c1997129c6f86c9ac391f4da"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "27ddfc9ec509ada8981b08480e30152350b013b36bf5a9e81fbae4f9b20dc68a"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "af132589d556db1f6b06e90f562dea61450090116bc1f9a3ab4b043d2ede71a5"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end