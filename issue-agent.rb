# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IssueAgent < Formula
  desc ""
  homepage ""
  version "0.12.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/clover0/issue-agent/releases/download/v0.12.4/issue-agent_darwin_amd64.tar.gz"
      sha256 "4d3967ad61f56337063112732708604bbfd64bc0e2c818cf4cb7ff5e02a164e2"

      def install
        bin.install "issue-agent"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/clover0/issue-agent/releases/download/v0.12.4/issue-agent_darwin_arm64.tar.gz"
      sha256 "1b02e810cf84af2327bad4b39866bb2b16bcbb898c3c1af76d8668c307749bf1"

      def install
        bin.install "issue-agent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clover0/issue-agent/releases/download/v0.12.4/issue-agent_linux_amd64.tar.gz"
        sha256 "8d8c0816248057396594e60493bd15772c19102b1d6393b8e60b7ca311de0f85"

        def install
          bin.install "issue-agent"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clover0/issue-agent/releases/download/v0.12.4/issue-agent_linux_arm64.tar.gz"
        sha256 "17b7df730aa25d09c0e035ee9488f81f980ac4fe66c4a9c9c90add067ca51686"

        def install
          bin.install "issue-agent"
        end
      end
    end
  end

  test do
    system "#{bin}/issue-agent version"
  end
end
