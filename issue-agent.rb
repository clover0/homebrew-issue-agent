# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IssueAgent < Formula
  desc ""
  homepage ""
  version "0.7.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/clover0/issue-agent/releases/download/v0.7.2/issue-agent_darwin_amd64.tar.gz"
      sha256 "cdaf5b01a5e5b3098db75ca9912b9fdbf9d169d68c59ea266bee3000b109f799"

      def install
        bin.install "issue-agent"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/clover0/issue-agent/releases/download/v0.7.2/issue-agent_darwin_arm64.tar.gz"
      sha256 "da54389997989c1c683f27ab246b3d26f66000ea23d63e9c661954337f03d038"

      def install
        bin.install "issue-agent"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clover0/issue-agent/releases/download/v0.7.2/issue-agent_linux_amd64.tar.gz"
        sha256 "18580d8b764f441373476c49b21c4931ebf511e543dbb7590a775af6c77f2cc0"

        def install
          bin.install "issue-agent"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/clover0/issue-agent/releases/download/v0.7.2/issue-agent_linux_arm64.tar.gz"
        sha256 "2387b70982bcb72221738bacaa7f7305499eb355ed7542de0307dbcde14037a9"

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
