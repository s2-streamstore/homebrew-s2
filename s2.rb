class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.11.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "08481036298ad54151cb9b4846eff3e0fb78d3ad916d518c4ef6e8873c672a38"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "7daf0b20df5b8725b0aa1c7e4eae08516e9810903080651adde7dd5ee19edc06"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "2cb50f7e6340356eef7bf8625d16aa8f285c7c91281179b81d0c5f1e4b05ec29"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "2c3662770dfce2a8fb40703206a3370f98dd7b66fddc7610ec01daca1b438523"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end