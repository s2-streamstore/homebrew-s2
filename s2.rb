class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "7d4317c24e94f97b47378582ef45a08b4d3faa16177eb3daf70e2516a295708c"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "ef095478deaa1c75ede69eaef2899b64f7d17ad2e29507bbff82e6652a6bdd7c"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "b8913469f0fd9f262011e48bb794d7de501b119d2882952f5713cfb128f2e7c9"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "ab617709c6869a7760228a8857c2eb9fe2d8d04922bde81009f3b3aa23cf01c2"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
