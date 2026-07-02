class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.38.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "b9f509d5e838c13f63326d937492a536ffb57c6e70c45671cc22967a5c579642"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "42117fa1d921231503592743c0016960840c753862910516727da9e33005fd37"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "c0023ae355856cf4c4af1c0fb302125715811210c5d861f7a8c45228c70ee20e"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "9240668cc7841a440107f13c7ae83dd9938984c4243aa513c07b415a0f603a22"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
