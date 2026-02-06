class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.28.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "51583825be4b5dc7d0fad348ba574a7bf754e7897540bb953b9e281175087b7f"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "a325233810f1e090392fabf9df58bc44547109f263260c057f150930d1db9479"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "23eb72403153d6fd3b9cbc94d978a6d26407c1f9f22036e3f64dd1b5c7301a66"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "b5a0dd453e1bee3747e99f6050e5234b431ca71cafeea6d72655e8f68e3399a6"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end