# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Semver < Formula
  desc "A semantic versioning command line utility written in Go."
  homepage "https://github.com/ffurrer2/semver"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ffurrer2/semver/releases/download/v1.5.0/semver_darwin_amd64.tar.gz"
      sha256 "7da0a239f26aea62cfd4dccbaf1d7cb9e1bf8b0822f9766549f71743b5f68ee6"

      def install
        bin.install "semver"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ffurrer2/semver/releases/download/v1.5.0/semver_darwin_arm64.tar.gz"
      sha256 "9a3f475ae1ded0df826af88d9b6009ebcfbc5eade0228a2e003eaee6693e97bd"

      def install
        bin.install "semver"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ffurrer2/semver/releases/download/v1.5.0/semver_linux_amd64.tar.gz"
      sha256 "e88baacb4c61f065e6f986b673be7c95a55e350aa56f6839b7c572b5e6b0dbfe"

      def install
        bin.install "semver"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ffurrer2/semver/releases/download/v1.5.0/semver_linux_arm64.tar.gz"
      sha256 "00375969cbf122fee3e912fef9c4c1184ba8571720f32b312daa9163f3459b75"

      def install
        bin.install "semver"
      end
    end
  end

  test do
    system "#{bin}/semver version"
  end
end
