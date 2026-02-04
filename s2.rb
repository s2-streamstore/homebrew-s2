class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.27.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "7cb61aa46872e50f315ab6e5aea59ccdfd44007eaad33cd2a238f79c9afbf033"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "770c186f4c4a31e45c758a99d817b4b46bc84b2845c33b30acc5253d47973673"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "5e4c775eeb38a08f5172c32b2c8272f1cba6778c22d08e9a85c7ee2e5664c958"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "b6caaa0a92ed883f0f7e50fdb98c8f3b8d0d25e1241a5da1ac65f99ceba42041"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end