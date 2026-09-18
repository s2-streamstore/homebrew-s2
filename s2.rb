class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.42.12"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "4c9373f4ce17cb5d1cfcdd365fada1dac40160598ba7d3595854b16f26f5ee5f"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "5f19163fdd4ce09eac2d10e7d92d40f18931c7892e1899eff941ce29bc0056c5"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "a01828ec01e72e11d247119cbd3784cf64c65e15e9255819b480132edc7c7da4"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "4ac5c53eac7cdb83ecbe10472836911f14d9561781387ab4a69e235661313e2d"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
