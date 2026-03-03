class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.18"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "f154b645b507dba7e982f71dd3fe19b994a37b4ec78888e011ace74aec76d5c2"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "eeba4f09b180a7a187413aa8752db10a475e2b1f87f9fdfbeb51d51b02c2a72a"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "3fc73348c33708b0c0447416feb9fe701773be6c1347244f38dac8b2633b3b3b"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "51035ea66732d6fe84055d964851e4ddc3621dab708d39c27408246a725d33b7"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
