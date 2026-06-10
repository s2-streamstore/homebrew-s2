class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.36.3"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "cfeb35e4998c6f080b077184fa4db4a04ca8aef95fc560eec1e1b9a212423ddc"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "5c60a79a912331a22144fc07c8faae885c2a1344d16076217068b12ae491ac0e"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "7ce70cf6cb07cdb00cfaa99afcee533417e41c4b66e088be2edb695b05182d79"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "4d2cbaa766905b4a874567c2ca4ccba29303c2e38392de69ba623df7a66a6cea"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
