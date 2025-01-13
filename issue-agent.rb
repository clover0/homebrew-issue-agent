# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IssueAgent < Formula
  desc ""
  homepage ""
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/clover0/issue-agent/releases/download/v0.0.6/issue-agent_darwin_amd64.tar.gz"
      sha256 "46bf95d5b920b856fcc916ffc5b58a1149d9324d0ae1e0a0c7146adb5c9bd2b6"

      def install
        bin.install "issue-agent"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/clover0/issue-agent/releases/download/v0.0.6/issue-agent_darwin_arm64.tar.gz"
      sha256 "2f73727ed2fb75738cbb329656fdc3d40e4dd58e2ae1251f532a0e82fba16212"

      def install
        bin.install "issue-agent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clover0/issue-agent/releases/download/v0.0.6/issue-agent_linux_amd64.tar.gz"
        sha256 "9bb4ac1ef884306fb7bd93717b42f5e2c6398e6c240e756ca92a855c379282d2"

        def install
          bin.install "issue-agent"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clover0/issue-agent/releases/download/v0.0.6/issue-agent_linux_arm64.tar.gz"
        sha256 "23d539fd4607cbf56cb48b9fab25ca152b42d0d3350bfcb1ab17f3be5280d810"

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
