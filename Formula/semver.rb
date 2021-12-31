# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Semver < Formula
  desc "A semantic versioning command line utility written in Go."
  homepage "https://github.com/ffurrer2/semver"
  version "1.3.0-test"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ffurrer2/semver/releases/download/v1.3.0-test/semver_darwin_arm64.tar.gz"
      sha256 "24d8ebd38421843be999190c807e22bac99e6e6b3b893029adc9cf2048ac1e2e"

      def install
        bin.install "semver"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ffurrer2/semver/releases/download/v1.3.0-test/semver_darwin_amd64.tar.gz"
      sha256 "58a8c8ac852fc53d69f5b91b615a97869c9d2436724f5842e1911ba2c3fa104b"

      def install
        bin.install "semver"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ffurrer2/semver/releases/download/v1.3.0-test/semver_linux_amd64.tar.gz"
      sha256 "fcff076b5d11e4b1e621195cf8a6ad01b4f15d52901254036b29b27dba65f32a"

      def install
        bin.install "semver"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ffurrer2/semver/releases/download/v1.3.0-test/semver_linux_arm64.tar.gz"
      sha256 "aa4324c76d8f26441e0d375c548bbf4faae10cb57d69ca7ec7896139c8b0101e"

      def install
        bin.install "semver"
      end
    end
  end

  test do
    system "#{bin}/semver version"
  end
end
