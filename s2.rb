class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.27"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "ac5e035fc148e63d09cca6acbc1feecf34e5c97a21b310b111db8e1deafc2d44"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "23202b1e16fbb5d3115e49ca4571c8327998a0cde820318ca129799172421070"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "ab5458e9111aad80ecf489dee6bc233fffec0c22189c0ad417f0a3d51c95ea4c"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "5ee1d31bb1671d7efeb4060c339f73763b380ac211a18412c24563d8d899338c"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
