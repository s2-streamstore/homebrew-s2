class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.17.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "4aab51479bd589db9e41269540b23369d99fec09d8f753af739279b5ca93e9e1"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "ed29638c4dc2ec455ae10468cd2f6cb559766d266bbaf6a968ef91fda02e1b26"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "22611ae39317e2a60cc5462502d4993deb7431cce67d610bd859a0db2dfd70a8"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "ceacf8f85ad8ef32e799f96352c4851acae1dd73fdf42bdfefe33901d27b2f95"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end