class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.6.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "10615e9b0f3af560fb03389c4d633b4a26410c14ff2a4ff31808662786d288d3"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "d9135dcf09bf27b5f4a452b509f249258c5c856259b8d0cef540c9aba59a984c"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "e60ffdd21f883542e5652c1520f8f0aa0b23e8c2c32a5651600763d58a371d9a"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "d5967f11debe1cc0bd03e8dee8b41f6b63efe794637dc4e7ef960ea54b7b1303"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end