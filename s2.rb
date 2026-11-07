class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.44.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "13406fa8a68aa737cdd62ece37438ade52e91f372f162226d404b37ff3ee3643"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "69e3cba42cfd29f0f8daa92a95916c985bec143acafc2b4b6d30537188fb1054"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "643f438156e1bb60e41b18eab7087f72164e11d23006df2b77ac5a04b31a988d"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "bbbf541b6a3c46a7d7f4cf830cd8cde30c2812db893b68d32c14e9a158f07307"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
