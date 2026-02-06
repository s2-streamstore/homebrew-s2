class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.28.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "e55675099a8911d6dfad8e0a8185ae70efedfc9c2bd852ad1d4eeb1569a9d961"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "aba2dc13f2bb999e845317a5f5624b511d707287c196f9176ce34a60e1eac716"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "8a096ef1670dc4e13d33438e1c6a025020ded81436fbe02d55f16b422df69bb7"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "5aa91f572255042a8ba495774eb406b2eb3c2d549a92d81ebbe92a6b6a3a6311"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end