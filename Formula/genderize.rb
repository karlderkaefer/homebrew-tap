# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/custom_downloader.rb"
class Genderize < Formula
  desc "Example CLI tool written in Go"
  homepage ""
  version "1.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/karlderkaefer/homebrew-golang-cli-example/releases/download/v1.0.1/homebrew-golang-cli-example_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "7999bb5e96f8b4c5ac779d9c43e7fb85ce077a8cf3dab332e5012cdac157c450"

      def install
        bin.install "genderize"
      end
    end
    on_arm do
      url "https://github.com/karlderkaefer/homebrew-golang-cli-example/releases/download/v1.0.1/homebrew-golang-cli-example_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "93078a14b75489244faf6efb3d6629d64c316a7d1bc5a62ca71add90a9c093b4"

      def install
        bin.install "genderize"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/karlderkaefer/homebrew-golang-cli-example/releases/download/v1.0.1/homebrew-golang-cli-example_linux_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "920c14861d3ae8ce5e70942d6dc72f3b2e327f79d267ec16dcabdb89ddfa48df"

        def install
          bin.install "genderize"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/karlderkaefer/homebrew-golang-cli-example/releases/download/v1.0.1/homebrew-golang-cli-example_linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "1c9d3ba7e8b853da0f2adab07b1ae487d54be9c64818a9034d968f86bc1799f7"

        def install
          bin.install "genderize"
        end
      end
    end
  end

  test do
    system "#{bin}/genderize -v"
  end
end
