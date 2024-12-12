class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.5.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "79944ea10a9034a3349f54c69d294ce78e5cf1c3016a0d6c97ec438e40271967"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "0ee9eccf6b0c48e6c622881c886a8981e9ba87fb6201fabb32de7d73d626c545"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "36e30336d533bfe86728a48ade2a6bf962efa969851fa5ffadd1c1d85068ec97"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "0c844386c56f0f9493cb809be3c81b2da6fbcc5b8bd75925aa7282ea0ae695e7"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end