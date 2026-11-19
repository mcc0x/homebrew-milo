class Milo < Formula
  desc "Git-aware file, history, diff and usage panes for the Rex terminal"
  homepage "https://usemilo.net"
  url "https://github.com/mcc0x/milo/releases/download/v0.1.1/milo-aarch64-apple-darwin", using: :nounzip
  version "0.1.1"
  sha256 "8d668fa72a2a7942738dc7b4b98e8c5060fedca2d405917ccb91b820954b26da"
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
