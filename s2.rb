class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.19"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "2c16955ab435e0821356cb9290ea166cff2389001b90799c938e02045dcc2aff"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "8874ed4e322b6862e312e31e86be3fde896230515eb8dd774ff0c88720f1c425"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "42f75e119ccc3dba4bc923be6e6153a955560314a75560e651d554fbad4c20fe"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "034a23cf7835b63b9de9c597c6e749db8c0dd05c244f5509f32ad87a58ea6afe"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
