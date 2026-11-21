class Aq < Formula
  desc "Local queue and device lender for parallel AI agent sessions on one Mac"
  homepage "https://github.com/xiatiandeairen/agent-quay"
  url "https://github.com/xiatiandeairen/agent-quay/releases/download/v0.6.0/aq-0.6.0-macos.tar.gz"
  sha256 "c9993b539b1b8f9b32975e76d6f11c60e58e2083124b227819fc20ccc455e88a"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on :macos

  def install
    bin.install "aq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aq --version")
  end
end
