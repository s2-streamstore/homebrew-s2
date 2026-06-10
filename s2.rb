class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.36.4"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "4b62f93129959c676173e1cde88c7296a8f6f6eed73dc7e7acf21b6e96130866"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "7e9073f369a754024cd3fc3d117407114a2f0f4b431e4b5f1b98fb08f21dadf8"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "0ae4b3b6e98ebe476923315a2b9bade86c5599f139ad0c9f9622c1f0e0726224"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "1258a1a5e852c11cc2078f5179ded405134f92d5b429ac6b163c5dec3a5d8823"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
