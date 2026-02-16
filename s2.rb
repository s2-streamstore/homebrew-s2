class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "91a3383f8d35ae59265a8cf2985fe7c56bc9f7af89d82956b4d7f4ab1db18324"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "1db7011a3c439cd95fdd18d047484089fde08921f6a12ad0723ef52a11607735"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "2397cff74b674ad38e37ea81581031c2675050b4a36a44c72f7d811db737a41c"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "ea5e287dacddefee357501cff3d6083e1c4e0aee57f2855b143b5ab4544dbbc2"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
