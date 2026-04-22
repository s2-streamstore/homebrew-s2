class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.30.3"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "a81aabf39f225380878a3d83b3ce824e02f17463b69ad127bd6581edca678967"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "ebf8eab12b493b1c57eb4280775b7bbb1edcf71056d581e583c3add120d1dfdb"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "ea144ee6794bc458d8069b93c18cb77340c4de35422d295376dad84d238fddf2"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "c9e6a47fdfe81d0cc85d4970138fdb649863585f35a569c51296f226ff985062"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
