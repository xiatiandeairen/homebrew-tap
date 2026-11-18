class Aq < Formula
  desc "Local queue and device lender for parallel AI agent sessions on one Mac"
  homepage "https://github.com/xiatiandeairen/agent-quay"
  url "https://github.com/xiatiandeairen/agent-quay/releases/download/v0.3.0/aq-0.3.0-macos.tar.gz"
  sha256 "7f48ed7802d0d9a0d3a6d13d6b5c568878f79535193fc28e7470d354b151bc61"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on :macos

  def install
    bin.install "aq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aq --version")
  end
end
