class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.36.8"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "0410c46f9aa7cc29e22854ce76c03261384fca74d02047b8e244536a37a82a9f"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "eb6524539f7c9aecaab48008e8df351419415acdd51e58c5fa0346271d09fad8"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "8e18216f24bbfb3c6a44f9d4fb3347cc2591e5577b8e9b3ebe7cee59cd099537"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "de7f836e538ce25df92edc10f942a4d2f615fb7e447dbae4099e84d59b1e3ad2"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
