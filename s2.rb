class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.17"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "89bec8dc52a72944e1578146a4b0b42ee223faa0c675236801dd56e93b65335a"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "d34dbf8b877337bcd7d537b7d4046abc980264077337c7015138da3610bd7c89"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "9cfd4f9dc7ff1113b0caf0cf5352a06c95d4e3e0db2dd0dbb511b64e6e499852"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "3114140c8c56fdf95b79cf3911cb110d52186a5507ad0ecc94bf2e19f8d825f9"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
