class Aq < Formula
  desc "Local queue and device lender for parallel AI agent sessions on one Mac"
  homepage "https://github.com/xiatiandeairen/agent-quay"
  url "https://github.com/xiatiandeairen/agent-quay/releases/download/v0.5.0/aq-0.5.0-macos.tar.gz"
  sha256 "12024e45a69bfa8cde85e204aab29387f552077d988e6db339da28d4d8d4e986"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on :macos

  def install
    bin.install "aq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aq --version")
  end
end
