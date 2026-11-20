class Milo < Formula
  desc "Git-aware file, history, diff and usage panes for the Rex terminal"
  homepage "https://usemilo.net"
  url "https://github.com/mcc0x/milo/releases/download/v0.1.4/milo-aarch64-apple-darwin", using: :nounzip
  version "0.1.4"
  sha256 "fc7fa82a6f45219b647c0809ea3c39ec4612d881d8168683346e323119dfcbc4"
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
