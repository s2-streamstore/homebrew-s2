class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.30.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "6e208d48dc005631a96316df6785ab2e88ac5d06cea08fa4cbaf13645497f02f"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "b8ed6ea9055fd9fb31f9d8a9129f73099db61d5d261caa421a324fe3d1427a23"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "96e7e3134beec06f99a513b827b4e230f5f3c363b04d184cfe257fcf068c542d"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "a4080221b082ba3df8c1e1ed7fc91ee5275375d477d984b0efc829becb704aca"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
