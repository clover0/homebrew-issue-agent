# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IssueAgent < Formula
  desc ""
  homepage ""
  version "0.16.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/clover0/issue-agent/releases/download/v0.16.0/issue-agent_darwin_amd64.tar.gz"
      sha256 "93383d3d01397ce19a41544042746a79d2bc4ebfff40c9b7298f6d03db3accc3"

      def install
        bin.install "issue-agent"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/clover0/issue-agent/releases/download/v0.16.0/issue-agent_darwin_arm64.tar.gz"
      sha256 "48dc8917746e200aa0484ad058d234e66013f621ad4704143d8ea17733fa2922"

      def install
        bin.install "issue-agent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clover0/issue-agent/releases/download/v0.16.0/issue-agent_linux_amd64.tar.gz"
        sha256 "37047d4cd17b45cb51ba01c727454afe288f7d934b053a3b018d51d16fec3aef"

        def install
          bin.install "issue-agent"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clover0/issue-agent/releases/download/v0.16.0/issue-agent_linux_arm64.tar.gz"
        sha256 "30f76c4f433219e39220d00cb0d96a16894909b8f73f2c593615bfef84aeeae4"

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
