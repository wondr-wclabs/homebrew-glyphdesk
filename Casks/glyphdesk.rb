cask "glyphdesk" do
  version "0.2.0"
  sha256 "f65d39d0a8769e0fb59c04fa9b1d7d652917f2507f08fd36b655c9c62de76590"

  url "https://github.com/wondr-wclabs/homebrew-glyphdesk/releases/download/v#{version}/GlyphDesk-#{version}.zip",
      verified: "github.com/wondr-wclabs/homebrew-glyphdesk/"
  name "GlyphDesk"
  desc "Typographic desktop widget playground"
  homepage "https://glyphdesk.vercel.app/"

  depends_on macos: :sonoma

  app "GlyphDesk.app"

  zap trash: [
    "~/Library/Application Support/GlyphDesk",
    "~/Library/Containers/com.glyphdesk.app",
    "~/Library/Preferences/com.glyphdesk.app.plist",
  ]

  caveats <<~EOS
    GlyphDesk is ad-hoc signed (not notarized yet). Install with:
      HOMEBREW_CASK_OPTS=--no-quarantine brew install --cask glyphdesk
    or right-click GlyphDesk.app and choose Open on first launch.
  EOS
end
