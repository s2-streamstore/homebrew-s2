class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.27.4"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "96634e9fa9127490fcaf40dfe8644836205a992eef943953aae7eb35b636ca61"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "1f13df42739ad48e649cacff9ac86f0f54068029c9e78b931440d53bf49cb704"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "757e8268fb293e709709320bd91d19f8f00310ed8b453d58e5e11b6fe4c6b6c3"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "3f492d2ed46d86f1d508145118c504660c9e547257626b878468bca004538c88"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end