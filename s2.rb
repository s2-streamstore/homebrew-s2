class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.28.4"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "38219f990a225faac6472f5165c9fc52a0786b5a44a804496d4bc9eeede40d24"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "3ccef1777c981d299aef666193caf321e194c97c44ce5ed9fa655efddd47de94"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "38cc83bb775151f7df5815c05f909a13e4cbcb60738fe3348771f94d53d1d2a4"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "594bdac394e94b8b54c857d2d44443a9af0ce2e2c4ad875080239708d95911c9"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end