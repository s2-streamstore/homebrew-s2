class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.39.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "14733d534cc8ca159ffe4f6fe5a18f2fb875d185b9c444346ab03c17bc72bbfc"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "0097bc687ca1557ad76626a0b520ba7bf5d3789d74d2708d630ffbfb67220036"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "6220ffc7749c3b649dff9ef1c14012facb60b3615435e9ced0b37cd36d7a8408"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "fc7d6c5b70c6a3310bb4443256e655ecf8809e1eb0d2cf068ee0b168e8335e03"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
