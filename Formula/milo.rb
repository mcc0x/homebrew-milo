class Milo < Formula
  desc "Git-aware file, history, diff and usage panes for the Rex terminal"
  homepage "https://usemilo.net"
  url "https://github.com/mcc0x/milo/releases/download/v0.1.2/milo-aarch64-apple-darwin", using: :nounzip
  version "0.1.2"
  sha256 "e9defbc84682150c31ad35b1e6e26d3ec5882ff8f7aee6a878ac117c257c4ef6"
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
