# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Semver < Formula
  desc "A semantic versioning command line utility written in Go."
  homepage "https://github.com/ffurrer2/semver"
  version "2.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ffurrer2/semver/releases/download/v2.8.0/semver_2.8.0_darwin_amd64.tar.gz"
      sha256 "61df686d0f262c1ec193d35a975ff3b80e68a4b5963ed5b29ecde4d70d9f8b2e"

      def install
        bin.install "semver"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ffurrer2/semver/releases/download/v2.8.0/semver_2.8.0_darwin_arm64.tar.gz"
      sha256 "6e51f307f2b606f177f397d6ea05c3c87bfb38314f76988c41350d3bffb0ccbb"

      def install
        bin.install "semver"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ffurrer2/semver/releases/download/v2.8.0/semver_2.8.0_linux_amd64.tar.gz"
        sha256 "24432afa6e0998659952895de4356911ba64211d171b03f437412142a241f163"

        def install
          bin.install "semver"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ffurrer2/semver/releases/download/v2.8.0/semver_2.8.0_linux_arm64.tar.gz"
        sha256 "4d0541f6913e0eef9b984716eac236ea1e18d37233a7b6e6a1462fd5d7237bb5"

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
