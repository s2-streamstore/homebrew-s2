class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.6.3"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "1a11dac38aa4f93a8cff8bcb839cb107bc024d4a3c0b3512e6216d13127514dc"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "76a250e1b0847930c2329bb077294ef5d034a3f7554b74632ae3d53cc6e1ab88"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "77923d0f6cf0d2d7b0a78c8d790af1ac4790c48a0f9e4d96523a4e3b7e739b61"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "d1f7a1dbc3506975f349bbe562189f60f026bd9990122a4dc200eb537b0f8b0a"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end