class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.6.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "832cc94172c9abc7135ae7bd5fbdc3fab743311f2363231c2fa19703e7766205"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "4c51a31a32142e22d95bb9ecd056f8cb26c0b6cbaa715bac7c97fc391ddda462"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "527cdea0c73be194c25e1ef1b7b134f0ecaa5e4afe9367ba2a4c380310fdf0af"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "9831e596506d93d85994482b4b74d0a9d7554ccf71157d42de371ede8217b373"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end