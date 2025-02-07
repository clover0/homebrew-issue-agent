# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IssueAgent < Formula
  desc ""
  homepage ""
  version "0.9.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/clover0/issue-agent/releases/download/v0.9.3/issue-agent_darwin_amd64.tar.gz"
      sha256 "5eedd544cd46265a48d256a64bd800e617933b18a8238bdef71c616dc6f756bb"

      def install
        bin.install "issue-agent"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/clover0/issue-agent/releases/download/v0.9.3/issue-agent_darwin_arm64.tar.gz"
      sha256 "eb8b029f63197fe306c29ec7f8b0d2ca1e69e6a5aa3fc6b27fd1feabf78fbc56"

      def install
        bin.install "issue-agent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clover0/issue-agent/releases/download/v0.9.3/issue-agent_linux_amd64.tar.gz"
        sha256 "6e3dd83cd6adb9868ceebe55e1e361b2abb936d399936dac8702b87e1fdd0212"

        def install
          bin.install "issue-agent"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clover0/issue-agent/releases/download/v0.9.3/issue-agent_linux_arm64.tar.gz"
        sha256 "7dd78f98fda885c04f10abc618c26bc53b4a578450c69ab6b8dffd05c640ae62"

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
