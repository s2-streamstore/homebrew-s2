class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.29.23"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "7aa8ad6b1bba341364598ef7fb0a94ce57d502aefb9935df51d43ca50abdb574"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "1c2ef740cd0524cd723b1c281d85b5fcd408d7130ee628bb8cb1e14baa9d92e4"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "dc7c5ea1c21a4791e610607dd44e9621e74aff20e86c2cb0c0dbaaceeb92e6b8"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "c399c3d541a3a5fc0ed5cab079d3d046dd0dec579e8bc30d94917fc818629c23"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
