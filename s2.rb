class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.8.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "39b018bc5faa842ea911f37aac654d153b187a4e2f8428748cf50ba58089068b"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "8779ec61bc345e6f103cd6c42bd9bbfb6c354c4616327ad33e38c9f4c188a6ee"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "039602d33dec1cddf1331ffb1df175bbddd9dcef987925f016a4d777237ba8d1"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "0c2a702ae224788d518e8b23311c0dbd1ae779595cacaaa481c83d07f0d66dd2"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end