class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.36.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "df9c2c1db040d3fef0d7be0fb546d3fce457920af48fd792fe546e7e339a856d"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "08b0c16ca8637cd6eeeb867e81def8f093e74c15b18e85186a26d7acbfbbf748"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "869eae387da5a34f81d2fa69e6ea2df504d4271a2a66265f8f2be6a2bf92abb6"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "7e35698834ec7a50d8131966f62b02b325a935eef49b6e086ae7e14334d72fed"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
