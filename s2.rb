class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.15.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "6823368939877bb3c114158b4837ce5680691fb65e3fb9c8707fa2fc8a7c9821"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "67b262c53bc9bafeca33399267402e573c5f1df59846e13ccef6781ec872266f"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "2e241fa8f51e9ad02c4c572ad095d66ecb2b511ba24a9270eab73e062d3d8b0c"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "f2001fbd6932dfd1cedd3ae7047ee4c73b5322457bbb67e9382c2edb018f0146"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end