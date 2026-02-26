class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.14"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "ff867ee04ed4af1766c6754998158ae3223f5821d726d226da7ba448ecff0666"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "1a344d28aec5f6450e6e7d663d86ac668443f88aef0a730b32f425ea22a27932"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "bc930b8fa1d6e8479a3aa6d5fde8e4176f995b1fc39fbdbaaf3ee4f13a9dc3ea"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "ed90975471f65eb3cb72a9aeee5681e698bfa9f5cbda300a664d20203ef853a7"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
