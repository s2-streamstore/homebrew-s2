class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.14.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "4254f56e779404de52cb42a392013979a4df04976dba05d8a904d20f342f8387"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "9fc3f6d9ea293b8393901a6ba9be6a1a99003375af685537c1e9deb10261a059"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "0f792fe968a3de15c27e8b896ee019562bbd3cd77ee9e6b7a8fa230d949ef226"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "475a6d04eeec511697fb1bd2332054e4994bdc25315d909df503066f64c3a57a"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end