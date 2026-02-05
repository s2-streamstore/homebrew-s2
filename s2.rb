class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.27.5"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "b18705bf7704bd9279663be411a3cb466fa353fe2a2cc0c55c9ea3df444e591f"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "f33067bcea7296540370329da60d718db1c491dd1c62e82d5a79670e88a41e81"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "aecfded2bdf2a9272440c44ed12481a3eecbfe495e31580e1ad3d9ef12dc8e4a"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "afd19f4184f68ade3faa734adfa5ca54e45dcc00c36de1a9a7ac8572e3323f3d"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end