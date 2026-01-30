class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.26.5"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "03d9d8609d5760b3e84f0317ad47ba0192f04f37c4e66caedbfd536de6034155"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "6c8cab6d85851788e6e91d9ffa1215635c0846960681a4305b69bd5105fa202c"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "7fe57962e07585416e2e2fa34629d1974f78a383b76dfc15ef742d2db8046a49"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "aa77db55f0a53b64e62a53dc824758a2e7aaa25e93f3779aee922378ec7791ea"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end