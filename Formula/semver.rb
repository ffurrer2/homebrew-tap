# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Semver < Formula
  desc "A semantic versioning command line utility written in Go."
  homepage "https://github.com/ffurrer2/semver"
  version "2.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ffurrer2/semver/releases/download/v2.10.0/semver_2.10.0_darwin_amd64.tar.gz"
      sha256 "354e42ae4b3695aa69a05f6b07744e24efc2749674dd30698412fa70a773f3e9"

      def install
        bin.install "semver"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ffurrer2/semver/releases/download/v2.10.0/semver_2.10.0_darwin_arm64.tar.gz"
      sha256 "05194d87a58cc6f13fbab258a6c91d2ef801b1da1c70e2d0479c947e83fa861b"

      def install
        bin.install "semver"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ffurrer2/semver/releases/download/v2.10.0/semver_2.10.0_linux_amd64.tar.gz"
        sha256 "5847bc4b5e59583084a59043bdffff7bb3bba6c05ac1672cd67f9810cc48e1bb"

        def install
          bin.install "semver"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ffurrer2/semver/releases/download/v2.10.0/semver_2.10.0_linux_arm64.tar.gz"
        sha256 "84d2a038909d4278ddfeaadb08666624e8bf2be15ff0cb276194637e13f9bf00"

        def install
          bin.install "semver"
        end
      end
    end
  end

  test do
    system "#{bin}/semver", "version"
  end
end
