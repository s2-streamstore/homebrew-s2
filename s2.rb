class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.21"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "ad03583516cc84288eab45b17e7be5f04fb6adb76f9f182b1de1ad71fbf53a36"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "15249129d902fad4e11a418ec72423582ad62d66dc923442df545f3b76d4ae7f"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "81348e62ed5b23e2c42788fe0f7ed3b649b74e310168d7c97c06a4334a59caed"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "a5d0ed1657142597225780773f96ce6a401af6e496d8dc5d2e271f3a7da205ad"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
