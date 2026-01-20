class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.24.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "f4420c8e42ebf26becdddd82a9080c5fe13f235c1bd5c169a887fa145b79cf33"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "a863a5bc899c079184446f53a8fdea39490e064647d55655451c282465b527f0"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "52566d3eee1b81a4a958e7e30c016ca4a5ee398b0b24b19487e4fae9b116bfc3"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "3bebc603d0eadd083042016f905c5514dd69111482bffdbf26df4f51933bd0b2"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end