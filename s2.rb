class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.23.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "86feb3f33980767dac7bd019de0b2c3c3c60e24992daab94eba3a6b6b4f61fa1"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "d8845ec79e80581a51a2b6d056f59b38bc667db1723f5c2c3aa119150eb3d051"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "767c4eb7602de0db3177d2bb4d3c9d07e4b742f3e1e5056e4c191d26ba55372f"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "a283671eea4f2a9cfbe4a4f141c511ce5ef453ad4010cbb08f5e2ebb66286e6e"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end