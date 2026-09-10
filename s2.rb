class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.42.9"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "4e4366b7cdcdf767da9bf31c495d45f313d1f0b6efcebdf56046fd28034f01b9"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "331a7fc5024537cf02113044116456e8f11f78399e5540f9cdc0a42bda581bd2"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "24c5459c16b55afc63506cd648b49d8226e367c048cae857c2753e8f482b9992"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "1280d494c07567da3e194d7a0da9940f610996b606d2285cfea0f76ae911f2d0"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
