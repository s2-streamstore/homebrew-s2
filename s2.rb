class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.27.3"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "b8725597e4276afc6e5f6d10f16cdafb300c37411d71bf2397db4ab77a8a166c"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "53a5d3ee2e1194716e5a3d445087087dfb73941d67304dae4351a01639d74533"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "4b7b640b2b93c54cdd74411ddecc1b4dfab0370518410bb4e4212eb37ead4c9b"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "cf39189b73a5e19689740e34afd30cc958fc0d0b6b772e2d4a0a3809133c108c"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end