class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.43.4"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "6c3d8f070763c5bcdf28f8d05f494cc6cf505ad55681864ef645ded48e34e0ec"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "47878c416a9d11ad9316e5bbc4fef4cc1428e9b8f80581f20eef8f27683e9e70"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "fbb9dfb80c56a31e1425b59df321222db5c11b5cec990541b0c8f2fa794d216b"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "62b4f69b682dcaae212c60a7f47315baaf9dac3441c7595135d5db9076dbc71c"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
