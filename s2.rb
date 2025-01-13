class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.8.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "7137d211c8ec2452d6739937e22ef3d6da294796d81f13c07627dc2bda72e7ba"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "57c8f645df02fae12950a0c9662233d5422eb775b3022736e43952a6ce792aaf"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "106755bcf872ab470238bd53da591bba6a347da9243c4b54abf37f913af12913"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "ee88f9c3afe17ade69d9c96fcdfc928a6a0d4ff45c876d14d2337199facd0f25"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end