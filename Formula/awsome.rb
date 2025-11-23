class Awsome < Formula
  desc "AWSome AWS TUI"
  homepage "https://github.com/vijaykiran/awsome-cli"
  version "0.2.0"
  license "Apache-2.0"

  if Hardware::CPU.intel?
    url "https://github.com/vijaykiran/awsome-cli/releases/download/v0.2.0/awsome-0.2.0-x86_64-apple-darwin.tar.gz"
    sha256 "9e00478f3258c13c896b25459990d734cfbf9b85b09f12e6c714c6b9f5b45f56"
  elsif Hardware::CPU.arm?
    url "https://github.com/vijaykiran/awsome-cli/releases/download/v0.2.0/awsome-0.2.0-aarch64-apple-darwin.tar.gz"
    sha256 "9b6596bf89c321cfb2427c13279331aa630bade6faf7d44b5ed3282e3be00aff"
  end

  def install
    bin.install "awsome"
  end

  test do
    system "#{bin}/awsome", "--version"
  end
end
