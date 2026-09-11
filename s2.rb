class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.42.10"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "6d0382863fb2d50ca50a7aa8730a2de12d1d5b401b9f0a6aaec621e640bd6dee"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "b12fc9d98cf976aa9e79772988b850ec418d6b3d9210a270f3631436083fa839"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "8d00a71eefbe5bd28c3cf97f3f265b4628c76daac6a59f8ad408fc53d9a61ffc"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "c3faff2a78f56cd5768444fff2a6bde91906a4016676f4510e321119c73bf73b"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
