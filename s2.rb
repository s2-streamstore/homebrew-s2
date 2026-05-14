class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.32.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "f5b98969009cac791f88be7725944daf700cacdac6425487866d3731831f766d"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "db4bfcac3f4365f6bc7eac562293a48e7ff21fa25ad86ecf09979ed81495dcc0"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "25a4a05d226e48d813851d058f5705b08a6093ec3f90c2f5bafd780af7fee35a"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "90cc00d3e0ba758750ad27e5237205941782a264c0a28c87cbabb986548c2c32"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
