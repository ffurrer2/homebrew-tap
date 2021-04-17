# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Semver < Formula
  desc "A semantic versioning command line utility written in Go."
  homepage "https://github.com/ffurrer2/semver"
  version "1.1.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffurrer2/semver/releases/download/v1.1.0/semver_darwin_amd64.tar.gz"
    sha256 "441412663e9762dbacccbfd2788be397e8db341ed9130419f31b039396140235"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffurrer2/semver/releases/download/v1.1.0/semver_linux_amd64.tar.gz"
    sha256 "0e8311f4dae2c4214d437282dbf8598e6d81fddcc154dba03c3cf4c46a5a58ae"
  end

  def install
    bin.install "semver"
  end

  test do
    system "#{bin}/semver version"
  end
end
