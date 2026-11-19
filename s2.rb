class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.47.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "a7581a742751b00a8b7a536a50d71ed514e2b6cfe1c47bef561610fe325adbb4"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "cb1f3477cecfa20dbc8d3295fc619d917bcd6107848552036cfd91b99ab7a67c"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "0ea2840fa92215dfd9673acbd58ce796721f77bb93f108696f51ce6d1d36aae8"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "d761f7c1baf61c244422be700e12744fb43eff2064e34190005dc4d9c7f6cf85"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
