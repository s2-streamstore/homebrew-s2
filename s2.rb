class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.42.13"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "51a5b9f9448f0c53a528aaecfab937079859a470692789ff6665f23c3ac6529d"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "fe5d852f7186d91ab59e96fc3f523287b9d2b00ffa21b15f2dbf2c3a0f70ea1e"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "bcc365dcdd855d137161b0947a54c4618b6f4fbd4027dddc6a3d17e5da25f4d3"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "a8db2fa1161da252f4302001994cb9d1bc84a5b057722deed469766738f5d5f0"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
