class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.28"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "2e1c3cf5a68d30933c8bc52b52c3c2ec6b26975a7e34a339b5af662b297e5443"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "97e55c11e24e8256131b6fb491b6931e8205d251fbfcc2b570b620eb41e3e9af"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "aa46d1104547200793091fb8e8e3d535124d51c1fcbb68a274a8fb5d934b016e"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "cb2872ab9de46885db9d75c108d44f9b9bf5072de53f7c30cb7e6e03612bc346"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
