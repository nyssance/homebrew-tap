class TauriHasgard < Formula
  desc "Native automation and testing bridge for Tauri 3 Wry applications"
  homepage "https://github.com/nyssance/tauri-hasgard"
  version "0.8.3"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  url "https://github.com/nyssance/tauri-hasgard/releases/download/v0.8.3/tauri-hasgard-0.8.3-aarch64-apple-darwin.tar.gz"
  sha256 "7d013110cc4ff9abcf84bc7b10dba4b0cd5c114742269bf5b802bdd2bfbb75e4"

  def install
    bin.install "tauri-hasgard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tauri-hasgard --version")
  end
end
