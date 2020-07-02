# This file was generated by GoReleaser. DO NOT EDIT.
class Semver < Formula
  desc "A semantic versioning command line utility written in Go."
  homepage "https://github.com/ffurrer2/semver"
  version "1.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ffurrer2/semver/releases/download/1.0.1/semver_darwin_amd64.tar.gz"
    sha256 "cb9e2b120d3ccb08cd36b1743cb567d413c23b56832c201dcd1135c765f8da38"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ffurrer2/semver/releases/download/1.0.1/semver_linux_amd64.tar.gz"
      sha256 "9cf9de207daad565f49bba3e1babde4cbb4964a35fd170f8699fa7f0e3c51058"
    end
  end

  def install
    bin.install "semver"
  end

  test do
    system "#{bin}/semver version"
  end
end
