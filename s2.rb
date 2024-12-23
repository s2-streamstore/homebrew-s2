class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.6.4"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "4096194c7008fe1e0fe428b1cc1b90a1cec4751d91547362bf923ddf4ae95bdd"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "918f6f7b47bb79a9122916ad82ed5bcc36fe526413da7a3a36bda385a284faa2"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "64b83f0a762f9f31c62aa6450b782a841cc71167bd0dc8f11706d5f9d3e59787"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "9d5d4ba1707c91a4975eea9f23ca9ac0759d3634070fb6f0152816a08ee60ee3"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end