class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.43.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "855281525e95eb217c752190744b5b2c9382b6360ab89ef992a4dd7bddf67345"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "52f3d573bd6811fa126076b8fd323c6d8448d6bc276cf340bd43ab1d9fb59905"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "c9655d6fe3244610680ee1937ff725e38e94cd6b163aebe0bbf55a478b4c302d"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "cdaed1e159346922e406b144b583108703e7ed0619506ed8da0c149945d21132"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
