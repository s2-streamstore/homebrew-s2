class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.35.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "d92c16ce5a65efe9111149257415837354dbf695e30f81bd806394809de0a977"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "44404ef0bf3839abe95275cb04bbfc424b6dc0fd624a519aac2fbc91d6208bc3"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "c82bc34ffc668400a599110c1abd0a7aec76756fff273047fa234f610d41fa80"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "ec2b67a5bb2bddfe3b69edbc072dc301a5afb1de4d8a8d25ab79143c12122935"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
