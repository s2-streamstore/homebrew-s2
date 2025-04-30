class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.12.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "bca7ff95026fb1ddb6e7b7e8689f785a6615c443f52d099e1112276cc9ed49a7"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "56b5666204044002768ca4c8dada9d64e635751ffb192f2eef0a8c80970d3d60"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "94a6cccd62f9f2136dd4a2dd4eb7aa8e24284b2ff9309b5fa0796a9f123fb172"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "4f26314380f32677d0182289e009e40e88eba9aa38d9b80ddbdabbc96c0058bf"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end