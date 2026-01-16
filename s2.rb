class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.23.1"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "669536aea4b8f9252c0487be7ddf151970c34a0dd792adaf23759f173e5ab760"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "ccb9c9c35ae8b5a28c8e4714460712bd51a33d6e58fab6c8298b3cb6415d4203"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "6b9908b89c1cf9ae9943754bcaa619721439b2279740d97633d727be08592935"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "670b3034870cdc7c0f812e17b39b8c211acf89a74ae3200c359b867243fd11bc"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end