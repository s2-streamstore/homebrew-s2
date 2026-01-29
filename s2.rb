class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.26.2"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "d71a3e4eab1d0c55d48080eee1c59fb80f4bb1f16c98fedf81331b2aacb09d94"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "4120188eb8a2b6f6128c207d53683026028256f62486404a1120644282b34467"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "40d7b53ed4602c7a8aa162f9d8b685012ba1e66b73b96e4cbf3d738a1020286b"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "f001ed4c928787d0de8604c79eb56dce1ae591593496b60c6da5204ab615f3aa"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end