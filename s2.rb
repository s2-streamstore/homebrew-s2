class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.36.5"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "ebbf6bd39a2820e64cd48d7ce47275bd9499c5fd65566b75394f64234ea47876"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "14c20308194b7274639f159dc51fee476090969556f4f4475e119ab873218a85"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "9c56e52698b0919204980bcc96c1edc17112ed417e3c47d74b1528424bb2336b"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "0092513d547c5cab0ff1bd55648536f574e63a54feb3e22401872e2185f3fdff"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
