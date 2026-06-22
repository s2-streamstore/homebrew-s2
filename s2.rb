class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.37.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "efe26ba1c6469d3cdc32bc0e41e3f25f14b58443fbdf052e7018038349441560"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "2cc07c87c8de052fe3fad0561246f856e964760592f9f17496ee61915f1169b5"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "ac52842afa70203135890f5aa8785c76cddfdd303118a0a2b5c456f4c57e1bbd"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "00ee513e39a6fe1905c9bf58da8bba19c4b54b4c2c8cd95c399352e535ed6668"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
