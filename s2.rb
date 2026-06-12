class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.36.6"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "5f045a3a90a7b42a3b2c8d24d017b076e2432291e22030c9bdc79bd16057a8d7"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "26684cdc5c44e1998f0ac79ae6486c90abc43358ad1903f5ae55e8fdaa27f940"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "ea181584c8568a8fc607da894f5299225345268cb7419dfd488baef251eea04e"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "5c08510aa4c7040a3ee7e295d440739e07d4885d682b3b4f30792ff2f9ae9f35"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
