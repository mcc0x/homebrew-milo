class Milo < Formula
  desc "Git-aware file, history, diff and usage panes for the Rex terminal"
  homepage "https://usemilo.net"
  url "https://github.com/mcc0x/milo/releases/download/v0.1.0/milo-aarch64-apple-darwin", using: :nounzip
  version "0.1.0"
  sha256 "e469ed3d206a8d24d458c2cbbdadf4338ec0277e0b37a18e1906cf14413b7d04"
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
