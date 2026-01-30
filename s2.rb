class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.26.7"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "4a397c76fdaff899d9f6e4f7d679f98ad439e43eb6ac470597000982703ca55f"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "83f44c2a42ca4b07c29df31a08e5ec553a1ab5f063434a974c03cc92f2f7100e"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "c9ecea0419838258f110c95c085c32fcec92111d5ddba297e5714620c1c5f4a8"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "cfc32d508df5a3e2bc02b7a9d0a098eec08ccd69cd6f3acc8b19a598e775c778"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end