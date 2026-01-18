class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.24.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "6d253a36d4d801591d9e5e8d4dec5cc7bbef54f36ebf2c88b9fd40dde2af34f3"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "73be9a0cb95905d690290c740f38e32bd849d5c60bed9c66b20f707ea1690779"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "6f34d1a1cdd187f67a4c288e2e7b4c79566bccce902412b82cca268b7336530d"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "31777468fb6c001067f99d12d0fb5831a92c06be5a784805e50df39095e910fa"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end