class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.30.4"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "2f605c0cc6ad5d46972c69cb7eb6eed23855fa00edff4075dc4b7e00113b45f8"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "727a0b82b66c205a204788525f1f4369e753633ca5e7878de635448fe4eccb89"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "e372c31b98a301d92a425f6c2cc139e628259d59b850876ee2c1939763d941b5"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "fd57195f4deb3cc0dbed6df66a353e1f390a066d59d1213843bead096adc66ef"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
