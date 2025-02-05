class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.8.4"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "57ac8cf80064534da3fbe912cd2c81de51baf273e2558307198c519ecb4e6ed0"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "4d6b417d7c1be8843fd1351eac6a0aaa778daa8ac4d4c06554d2796290bf10fc"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "5223c6f6acba657d69eda856f748ed09916e78f71c439212794ca86f02378979"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "22ab241f41336d3ba3086519535ec0e5f5fdb1418a6ec8dd1c468a1b994fbd42"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end