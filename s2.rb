class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.9"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "551717fe72f22f93e53b4292c49d317b23ae384b65805f3646aa019945eb3a75"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "c7b42e5caf1719c2e1da8cc7bae4f4e2368d9472ff0252f21c1f813e3cd524c9"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "2e52c40101b81e8f7572bf5c7b4193178aa46312949cbd64e69fc748c0626706"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "b961dbec26096dde6f6b6d5f7b93080637474328c78b77ead65239fa3ce503fd"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
