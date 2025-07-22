class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.20.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "d8a46800eaaede825e1ecffe36ebb8787b5cbb6f52b08d81dc8a090d639962db"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "631099a94da7442f14285ef097dee8a79c67bdba3884a1c99e96b83d1e9d7189"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "7662d313467d5c7732f680f1df5573e3bb6dc69310fb1eb7844afaa7538efe68"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "090cb96848f3263cd5cffae4e4d38d2eb8cd714677eee3feb10c886705529bee"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end