class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.33.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "82d9be350ce16b03ad44e7d2c07c6a75d3f62a99c94b9b3eb216ffac48213ea7"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "34240b259cc09a8a9c6876096328350d3b9b0d02698057f731e2e76246c815a4"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "536f023b949b8be772fb847a66031d29bdf6258096cb0de44d0d9e869c6e889f"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "ba25034a3f93ff148306501fa90a0f0ea56af7faa0264b88ed77464d334b6d56"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
