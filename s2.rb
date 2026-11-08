class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.44.3"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "5f37db34853310779e3b946e675ada328d8cd2a0fd79751b24381016f6d1c07f"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "c383cdc014455543b984175f9db69880a38d889dcaba0a7b8c8c376b4bcea231"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "69d98c96406e2293ed482b79e6ed71fdbdd5e44e5d1331c088e58af971fa69b6"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "6947f5ebbae276c17d8edc37ad2afa807c7c4fa425ecd12979dc83e308d12515"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
