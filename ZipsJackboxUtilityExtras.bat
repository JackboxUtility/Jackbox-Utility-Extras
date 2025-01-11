@ECHO OFF

:: Hacer Jackbox Mouse
cd "Jackbox Mouse\Exes"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../../../Zips/Jackbox.Mouse.zip" "."
:: Hacer Accesos directos individuales
cd "..\..\Individual Game Shortcuts\Spanish"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../../../Zips/Jackbox.Utility.Accesos.Directos.Individuales.ESP.zip" "."
:: Hacer Individual shortcuts
cd "..\..\Individual Game Shortcuts\English"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../../../Zips/Jackbox.Utility.Individual.Shortcuts.ENG.zip" "."
:: Hacer Scripts Stream Deck
cd "..\..\Stream Deck Scripts"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../../Zips/Jackbox.Utility.Stream.Deck.Scripts.zip" "."