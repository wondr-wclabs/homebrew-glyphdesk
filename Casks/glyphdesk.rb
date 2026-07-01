cask "glyphdesk" do
  version "0.2.0"
  sha256 "0bc5b5fec25ef4a675811e37ed4007f12f701ff6b79d56a0acafa316881e4218"

  url "https://github.com/wondr-wclabs/GlyphDesk/releases/download/v#{version}/GlyphDesk-#{version}.zip",
      verified: "github.com/wondr-wclabs/GlyphDesk/"
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
    GlyphDesk 0.2.0 is ad-hoc signed (not notarized). Install with:
      brew install --cask glyphdesk --no-quarantine
    or right-click the app and choose Open on first launch.
  EOS
end
