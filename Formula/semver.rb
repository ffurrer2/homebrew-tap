# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Semver < Formula
  desc "A semantic versioning command line utility written in Go."
  homepage "https://github.com/ffurrer2/semver"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ffurrer2/semver/releases/download/v1.3.0/semver_darwin_amd64.tar.gz"
      sha256 "99587b119d7e202857d66056323a027ab922923d6a7263850ffa0c2f59397074"

      def install
        bin.install "semver"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ffurrer2/semver/releases/download/v1.3.0/semver_darwin_arm64.tar.gz"
      sha256 "e6f85f9894e78d500ec20770f96a2b286bf4fd8310505c8473e4cc1f0e6861dd"

      def install
        bin.install "semver"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ffurrer2/semver/releases/download/v1.3.0/semver_linux_amd64.tar.gz"
      sha256 "1f154dd0c44749b0dd36d1cbac666c9c19de0d475803f447977c519de13e6b53"

      def install
        bin.install "semver"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ffurrer2/semver/releases/download/v1.3.0/semver_linux_arm64.tar.gz"
      sha256 "f2b6329dd03557c0235c562501961bae07bb6c87ead5f8f80eb2f2b11ce1d32e"

      def install
        bin.install "semver"
      end
    end
  end

  test do
    system "#{bin}/semver version"
  end
end
