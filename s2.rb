class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "43e7a5ae68c07cd5b973d3aa19f7cb6eb0c4970cbabd47735802238f6f54293c"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "00710b4708238d9cb81724755f4ff2663ffa5c60dca4a65e3fbc51bbf586bd4b"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "567bfb0c13f5fee9bafaf4e80a98b45daf75c5e059dc94d3139e97528e320bf0"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "484717a6c9293f3364fe3ff59b6e241b05db40837f0a8293601679a165ce8599"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end