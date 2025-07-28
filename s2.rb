class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.21.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "040477f971d54a1f645bcab79806d85ace7218465fd968ab83547c82702b70df"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "de34d05a9831ff8816c3ce278b4c46f4fa4052fb90bb9487950b7367ecd89d30"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "5103646dbe147ddc55cb4ac00f794fe9f34e96a6d5c2f9831f36d3a62751dcb3"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "322fc45070f9780ec96d3d34674dc3894fed2765354b03dbaa40d3459b43ef73"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end