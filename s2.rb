class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.50.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "8ff0a06d834b19f20b251a04958f3ba3415fa48a18811e017ebc90483788fc35"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "89873af5cf85d5c10fe9ad7f1127558495c389290208cefdf69588556b5a6939"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "aa2ba1917bb513cb6192a64f962e72d567e641970447107f7044e6b73823c9fe"
    else
      url "https://github.com/s2-streamstore/s2/releases/download/s2-cli-v#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "7ad8a9a6ddfd8354efcd3eecdc106be058ba742ed7d0d83b3b8dd49bb5e4fa36"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end
