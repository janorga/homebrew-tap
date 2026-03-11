class Tablefy < Formula
  desc "Interactive terminal table formatter that transforms CLI command output into beautifully formatted, fully interactive tables."
  homepage "https://github.com/janorga/tablefy"
  url "https://github.com/janorga/tablefy/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "2e4c54381e875ee4d17803dfc2f59a00d08efb90d857d7268e9286962e490726"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/tablefy/main.go"
  end

  test do
    assert_match "tablefy", shell_output("#{bin}/tablefy --help")
  end
end
