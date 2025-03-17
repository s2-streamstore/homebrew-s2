class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.10.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "9c211ed073ab294df1dba01daa10e84f99a3b77159f638ecdd84ae7cc12637b3"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "52844088170ab541579fb57a19cc12b2449bf2b05c818da806008c36bcb6a3c2"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "c0bf372408d536984729dbb384feea2976822aae9e44288015314b3ff9806dd4"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "275e668a56c2875f43207b9af2b65c94c10b1770fe32ee79ba11d2a83be038af"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end