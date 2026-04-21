class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.30.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "5e8fdc347f33cf7994cd4f3efa25afc4481d2aaefad336439d7803cb8d38dc4f"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "0ae80d7e9ba6e80babe0fb9fa824341e1255f58f1da2e5a866bbcf24f1c9d4dc"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "6d2ae1c96d267b8afd703952c2f409b761d8dcaf65073e124ea0dd32c9513102"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "25ac42f4073287827509a8f1fe1dc3a470f285b4a64fcb0d1d85342c87fa2431"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
