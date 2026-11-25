class Milo < Formula
  desc "Git-aware file, history, diff and usage panes for the Rex terminal"
  homepage "https://usemilo.net"
  url "https://github.com/mcc0x/milo/releases/download/v0.1.8/milo-aarch64-apple-darwin", using: :nounzip
  version "0.1.8"
  sha256 "e715e19d593d476dc78711fca2a96ef8ff65fb41e414a00a261a261e2d107043"
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
