class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.37.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "f1669c78b842cc53a5cf8667c1ffdd420d49ecd3e3b9a6955138e221f757ceae"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "d4624642ad0e6c3da80c202c8207117e41559af28a0fb0becce9955f2a30bf38"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "d1a8d21b93d19685a18866ef6999a24c667714d6e1f13ce8ba0f6a2d82ec43ca"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "4046cebe202145e1a88d26d449690eec48fd0080e2031ce6d951a98cff79f9ab"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
