# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Semver < Formula
  desc "A semantic versioning command line utility written in Go."
  homepage "https://github.com/ffurrer2/semver"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ffurrer2/semver/releases/download/v1.2.0/semver_darwin_amd64.tar.gz"
      sha256 "ad53cfa6d61cec7fc6993dc9147db6ed94584536b0d53b3e443be18fbc9c5f2b"

      def install
        bin.install "semver"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ffurrer2/semver/releases/download/v1.2.0/semver_darwin_arm64.tar.gz"
      sha256 "bceed638498342489919f50c7427e9824e40e13aadd70d94df862c18faa906af"

      def install
        bin.install "semver"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ffurrer2/semver/releases/download/v1.2.0/semver_linux_arm64.tar.gz"
      sha256 "52bb9e0f6281c0535e3e7ff029115af47a703aa3228b1e566f380133b9461de0"

      def install
        bin.install "semver"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ffurrer2/semver/releases/download/v1.2.0/semver_linux_amd64.tar.gz"
      sha256 "32f8d255042c1915ee662574ef768bea6f7f032c011e5e872dd19143540ff301"

      def install
        bin.install "semver"
      end
    end
  end

  test do
    system "#{bin}/semver version"
  end
end
