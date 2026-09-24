class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.42.14"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "6223221d079d18fad2e917427e7bac46a336bc8f551e6c5b9c4c4165f98443fd"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "7745c916773b3a72626359f4eaf3ddcf3c577d5a8b3dc92c7060ef2d0cf79425"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "4b5a73b39281713a9dfb3cc3541f85745d7b81f6fbd5c96d5668f5efb935a690"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "e63bfb5022c402f2910bb5581434e61e7f9e5b06fc2d67973b34d78af7f785df"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
