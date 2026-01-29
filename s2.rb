class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.26.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "553ad33ee785556142bc769f3b0a20b8b4814a680fe153f620285b55553627a4"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "321e82a647351a9ef39af29a2acbcaa01baf9e07153772772e8058637312db23"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "0e63092f0d0df41f55752eee071f4ab31a72e33962d6e6a69727808d30e2c130"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "662c3333e649e0a5afe213737fc4cdbc22eb0871d2141c06933005b3eb83d356"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end