class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.24.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "8cfd091fec721af02115c56122957fc5a2eb74477a5f2d879fbcd28abf009576"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "4b7c60b17162201aec78c13f420dac4e09d01f2ab4eb7e4bc5c515cdb3881702"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "fd86c6839e9c3ed05ddd74fb62bc3d491a9baac421f4bbcda12d92dbf458494c"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "d64c873d2c349f558978920bc9421bab3ded590c4bd2d8509ebd63f3e7203632"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end