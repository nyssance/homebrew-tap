class TauriHasgard < Formula
  desc "Native automation and testing bridge for Tauri 2 applications"
  homepage "https://github.com/nyssance/tauri-hasgard"
  version "0.3.0"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/nyssance/tauri-hasgard/releases/download/v0.3.0/tauri-hasgard-0.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "f1436bc8f037d9b164415baab110538c1da042c943fd57e047f500598212c3fa"
  end

  on_intel do
    url "https://github.com/nyssance/tauri-hasgard/releases/download/v0.3.0/tauri-hasgard-0.3.0-x86_64-apple-darwin.tar.gz"
    sha256 "866f6436b0b87a1f2dec7f001e2593a435a158a8490d2973dc5af9a61a19bf57"
  end

  def install
    bin.install "tauri-hasgard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tauri-hasgard --version")
  end
end
