class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.42.3"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "68d4400ccd85ca301210bc225acc95760e29e8ddcdfa53f93f7cd639f61d1d09"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "ec37d6398d111ab8bea8bc65654e96cc7191441a879ea61666f95059bbac68e6"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "71a8ed5961dd89c0e5c49a0a0c5d373947b898dececfe0deb75b93e77a9b1feb"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "b100560f2d257259a1fd49d00509d10f4fe1c229fd1a1331b9139e3fd02f83ca"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
