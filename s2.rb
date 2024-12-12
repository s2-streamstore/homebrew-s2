class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.5.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "affd2aa35872d1b6c34083a1587466437075707404afb6b1e8be067b055c717e"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "bdc964d554f49aa7e3ab8496de0800a34978071e6048aecbf94d86399283645f"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "d3bf5f2eaa35f3a61bb6402213e5f4c436adcf1db57b0ed21f2c5e1712882d5a"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "237bc43da6ef7045112d0442a7321ab85e4a786d495e40b5e285cf23e7fc0405"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end