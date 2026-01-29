class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.26.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "a0d9d346f822f56b85d19076f42060e45cea64734aeef340c7cd0d2d63461a7d"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "24317c17d6c07ee2e970c1f160284fca6799fa4a85bc7cd721ae59f3f107f6ba"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "ae17096f46e92e1a4d697afc1e37dd561a2d1b4337cabf0cf5b792a1c98c5c97"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "e0045095c002f157f56bbed6f4c42b0ea9f2af95ef47204b9e765cc42aa03d49"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end