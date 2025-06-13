class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.18.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "e936fd36e1e7a54284cc762d14e1f5509709f11a42cc7e8e79136155ae96fc93"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "7ced55ccdb5feb5bf279359adfb6177dbd5346cff416f45cc87bfb360c2b6b09"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "f37f62bd3fc3d281aafb423a744194cc06dc877db2ffbfa17a5c8754a9489442"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "2deb391422e7111022b52d55b743c98d245e00042b3bf44c8ff8e49b23f51448"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end