class S2 < Formula
  desc "CLI for S2"
  homepage "https://s2.dev"
  version "0.22.0"
  license "Apache-2.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-apple-darwin.zip"
      sha256 "74651eb078443aae36757f2da490bb51563293e7124dfbff7140a6364649e8a8"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-apple-darwin.zip"
      sha256 "d6a231898ab0996fad2b54503e2b7c497394b81bdd2b49c529cbd3351651c49c"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-x86_64-unknown-linux-gnu.zip"
      sha256 "594de615002b6aebb53e974638f1f99836d82b5555e501d55c84eed2db883f09"
    else
      url "https://github.com/s2-streamstore/streamstore-cli/releases/download/#{version}/s2-aarch64-unknown-linux-gnu.zip"
      sha256 "83fb4bb708e9f9336a6aeb22cd05e237a12763480aa79b6d07803845af6ac919"
    end
  end

  def install
    bin.install "s2"
  end

  test do
    system "#{bin}/s2", "--version"
  end
end