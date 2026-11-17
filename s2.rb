class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.45.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "47b3eb7fd253e7abf32ab8cd138bedef9886f047801c1047dfbc4e2b96c0b5dd"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "881c047aa45371719a5482f7e0d397effca59a0056bdd626a2233f676d8b6011"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "4806651d04239635bf7ad17d4de52176a4e4781f95d5b885dfaf190fad65921f"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "b18329ed40734f0928294aafce86a3c62f92116954a0d6ff49028ba849c873b5"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
