# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Semver < Formula
  desc "A semantic versioning command line utility written in Go."
  homepage "https://github.com/ffurrer2/semver"
  version "2.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ffurrer2/semver/releases/download/v2.6.0/semver_2.6.0_darwin_amd64.tar.gz"
      sha256 "173a4b8cc46af6980cd895ec42cb867a8b9718e36668c24389e0fbe46f9850cf"

      def install
        bin.install "semver"
      end
    end
    on_arm do
      url "https://github.com/ffurrer2/semver/releases/download/v2.6.0/semver_2.6.0_darwin_arm64.tar.gz"
      sha256 "d20aa2c88f10e49000f9dca658f43902d1bcc55fb596d6ac7129e73dc211e8ed"

      def install
        bin.install "semver"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ffurrer2/semver/releases/download/v2.6.0/semver_2.6.0_linux_amd64.tar.gz"
        sha256 "2027bb9a8d5305df63556c80ef7f5922c783c7221fa4539358f4c858a48d788f"

        def install
          bin.install "semver"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ffurrer2/semver/releases/download/v2.6.0/semver_2.6.0_linux_arm64.tar.gz"
        sha256 "c316537faa9d3c1b0abd2136a36a8bdad4b72f219b059ffe3a15a96f2367f893"

        def install
          bin.install "semver"
        end
      end
    end
  end

  test do
    system "#{bin}/semver version"
  end
end
