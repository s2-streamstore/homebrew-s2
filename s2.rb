class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.30.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "75c567ed6e95c85c70b9ccc4ab343afe8c01a4c9ec03ee543291d3247daef076"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "cdab178479c97ae937dff296821b710ecd228d8e3937d7fca257254a5cfd6427"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "c0fe6f2d2e53e55a3d53253e3c247b758341b6e4ccb704933e7e8161fb486afb"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "b761ba05b45c177c3f8985af88bc1094ad8375a43222d1fa0786709cefbde775"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
