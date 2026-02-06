class Cage < Formula
  desc "Opinionated devcontainer launcher with a ready-to-go template"
  homepage "https://github.com/egornomic/cage"
  url "https://github.com/egornomic/cage/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "959a0977150072bebfa7e58b1a6d07d134d8fc915d3502dd2ef13924f44a1fcf"

  def install
    bin.install "cage"
    (share/"cage/template").install Dir["template/*"]
  end

  test do
    system "#{bin}/cage", "help"
  end
end
