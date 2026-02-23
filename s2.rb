class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.7"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "d66321682e1b1ff2e2a6d2e2cd79bf02d00a17bb2eb9d609f7deab2202f377a8"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "a833da331ea71caa636817dd849565e3527f554c18690df101f073a9d1ed4072"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "3c2dcb922f31a6ff530653866c5086622241df61b8bd284db53b3c80f9238424"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "399d7730b131bf126df57344de1a2549dea0cea2268b90ade0373ea8460f0177"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
