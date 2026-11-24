class TauriHasgard < Formula
  desc "Native automation and testing bridge for Tauri 3 Wry applications"
  homepage "https://github.com/nyssance/tauri-hasgard"
  version "0.8.1"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  url "https://github.com/nyssance/tauri-hasgard/releases/download/v0.8.1/tauri-hasgard-0.8.1-aarch64-apple-darwin.tar.gz"
  sha256 "32fca1dccc1a6f657a396e644a867848d3f3f9091af0ff84cda4b812a7a169c7"

  def install
    bin.install "tauri-hasgard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tauri-hasgard --version")
  end
end
