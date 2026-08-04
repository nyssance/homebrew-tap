class TauriHasgard < Formula
  desc "Native automation and testing bridge for Tauri 2 applications"
  homepage "https://github.com/nyssance/tauri-hasgard"
  version "0.2.1"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/nyssance/tauri-hasgard/releases/download/v0.2.1/tauri-hasgard-0.2.1-aarch64-apple-darwin.tar.gz"
    sha256 "641c109b6a909fa16aaa42021a68d30c469db04bb0453d5ef9fd2db0e7f460e8"
  end

  on_intel do
    url "https://github.com/nyssance/tauri-hasgard/releases/download/v0.2.1/tauri-hasgard-0.2.1-x86_64-apple-darwin.tar.gz"
    sha256 "12566062698c00dc69ddd2e511206a5f684f51b5a38d98a7ad61fd7239fb8c33"
  end

  def install
    bin.install "tauri-hasgard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tauri-hasgard --version")
  end
end
