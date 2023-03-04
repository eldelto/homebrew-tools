class DevTools < Formula
  desc "Small convenience tools useful for dealing with work"
  homepage "https://github.com/eldelto/dev-tools"
  url "https://github.com/eldelto/dev-tools.git",
    tag:      "v0.1.0",
    revision: "0cf5122742dd81510f0bc54c375e6651aa935108"
  license "BSD-3-Clause"

  depends_on "git" => :build

  def install
    system "git", "submodule", "update", "--init"
    system "make"
    bin.install Dir["bin/*"]
  end

  test do
    system "#{bin}/hyper-git", "-h"
  end
end
