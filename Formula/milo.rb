class Milo < Formula
  desc "Git-aware file, history, diff and usage panes for your terminal"
  homepage "https://usemilo.net"
  url "https://github.com/mcc0x/milo/releases/download/v0.1.9/milo-aarch64-apple-darwin", using: :nounzip
  version "0.1.9"
  sha256 "7f2f0349d33fa25765c9bce92d0e6fdf1b1d01ffa8e8dbc74fcfa4f7daaf2e2d"
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
