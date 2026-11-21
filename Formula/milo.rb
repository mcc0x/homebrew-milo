class Milo < Formula
  desc "Git-aware file, history, diff and usage panes for the Rex terminal"
  homepage "https://usemilo.net"
  url "https://github.com/mcc0x/milo/releases/download/v0.1.5/milo-aarch64-apple-darwin", using: :nounzip
  version "0.1.5"
  sha256 "87f0d7e8dde2a39a293927fc8ec3bb4a8931bb92f7e783a02369456ca67a078d"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "milo-aarch64-apple-darwin" => "milo"
  end

  test do
    assert_equal "milo #{version}", shell_output("#{bin}/milo --version").strip
  end
end
