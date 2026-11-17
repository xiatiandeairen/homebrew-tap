class Aq < Formula
  desc "Local queue and device lender for parallel AI agent sessions on one Mac"
  homepage "https://github.com/xiatiandeairen/agent-quay"
  url "https://github.com/xiatiandeairen/agent-quay/releases/download/v0.2.0/aq-0.2.0-macos.tar.gz"
  sha256 "c7de589d30ca5101ca049a8e2c6d23d981c888ffd3133a95b4c412f3cc6bffb2"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on :macos

  def install
    bin.install "aq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aq --version")
  end
end
