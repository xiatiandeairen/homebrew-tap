class Aq < Formula
  desc "Local queue and device lender for parallel AI agent sessions on one Mac"
  homepage "https://github.com/xiatiandeairen/agent-quay"
  url "https://github.com/xiatiandeairen/agent-quay/releases/download/v0.4.0/aq-0.4.0-macos.tar.gz"
  sha256 "076a7a83d9a139b603932be90f26168bf757f4921fe26dc6e56141529e215e97"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on :macos

  def install
    bin.install "aq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aq --version")
  end
end
