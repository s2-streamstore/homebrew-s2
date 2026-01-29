class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.26.4"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "6fc4294b813ef40f75e04652f72117a342a7c40f3f8b3305d0981411fdc0e814"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "67741957743003a27ae8c0cb738d1da5e391a475ce2e8e3983acb5287fb99927"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "39e28cfc82174d5adb45f66a90b06f4be184501b24cbe8a86c365bc087d743f3"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "8bdc9c66b19ebc101d0be3e4862acd00c1f3c938ea3153a57fa83206ecab8a12"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end