class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.26.8"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "eb7e48e46d11456e2f5b4f3bba514e54c0cce732a7011d53fbff4adb732950fc"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "04f7201c39b79a9484de81547ff3996039f53a01ddedd9369746cba23b34152a"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "1efe09f25df09fa41daebe4dbd5228bedec12d30feb473b6e723d26ea7df88f2"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "ee2461fe93344b611b2a224b7776c92d7ed9ccde7770aabf1e20b7e3b33b2cce"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end