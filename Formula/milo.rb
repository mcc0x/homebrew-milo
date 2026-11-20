class Milo < Formula
  desc "Git-aware file, history, diff and usage panes for the Rex terminal"
  homepage "https://usemilo.net"
  url "https://github.com/mcc0x/milo/releases/download/v0.1.3/milo-aarch64-apple-darwin", using: :nounzip
  version "0.1.3"
  sha256 "935cc8d08b5d52a958862a64ffd1249c5688babac2c02d820a2176426e3ba04b"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "milo-aarch64-apple-darwin" => "milo"
  end

  test do
    assert_equal "milo #{version}", shell_output("#{bin}/milo --version").strip
  end
end
