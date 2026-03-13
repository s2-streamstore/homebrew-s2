class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.22"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "572eeb0bb9ea35876236778396d9720b6617b2d8a1d4171bda86fd56652c9e79"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "9f85eb9406dfe2d315a539706cbf93943e5d31bd0e516a542dd90a144ea754cd"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "4c5086aaa1428190e9a3ab15da018f89146365a148ea06fbde71cc3bf360a9b6"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "028e8bc19441c0c2755129a18e8f47a3dac1eee124e2b164fa034924dffa7648"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
