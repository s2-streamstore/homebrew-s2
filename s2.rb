class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.9.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "ef3122ae4673c31a8e587e30e79e48af223d29aab37ec2fa187466ab33d252eb"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "aab6c9b64f894f95e5fadd522d95a922011d70115188cbd09549af4b4585e77e"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "8fd078194c0a7496ca1d37dc3ec7a478b5205b57f1f0b17de8b20231f6205615"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "1534237e5f0f43d2916f2d521f81e8967da61370666f774553cde30511b0478f"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end