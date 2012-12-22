; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "FB2ePub"
#define MyAppPublisher "Lord KiRon"
#define MyAppURL "http://www.fb2epub.net"
#define Contact "lordkiron@fb2epub.net"
#define BaseFolder "C:\Project\GoogleCode\fb2epub\"
#define BuildFolder64 BaseFolder + "Output\x64\Release\"
#define BuildFolder86 BaseFolder + "Output\x86\Release\"
#define File4Version BuildFolder64 + "Fb2ePub.exe"
#define AppVersionNo GetFileVersion(File4Version)




[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{86973C45-84A3-458B-A98E-CF360FD87909}
AppName={#MyAppName}
AppVersion={#AppVersionNo}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputBaseFilename=Fb2ePubSetup
SetupIconFile={#BaseFolder}Fb2ePub\epub-logo-color-book.ICO
Compression=lzma
SolidCompression=yes
AppCopyright=CopyFree�
ShowLanguageDialog=auto
AppContact={#Contact}
UninstallDisplayIcon={#BaseFolder}Fb2ePub\epub-logo-color-book.ICO
ArchitecturesInstallIn64BitMode=x64
MinVersion=0,5.01sp3
WizardSmallImageFile={#BaseFolder}Fb2ePubSetup\banner_small.bmp
WizardImageFile={#BaseFolder}Fb2ePubSetup\banner.bmp
WizardImageStretch=False
LicenseFile={#BaseFolder}license.txt

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "ru"; MessagesFile: "compiler:Languages\Russian.isl"

[Files]
; common
Source: "{#BaseFolder}FB2EPubConverter\CSS\*"; DestDir: "{app}\CSS"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BaseFolder}FB2EPubConverter\Fonts\*"; DestDir: "{app}\Fonts"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BaseFolder}FB2EPubConverter\Translit\*"; DestDir: "{app}\Translit"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#BaseFolder}FB2EPubConverter\fb2.dtd"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BaseFolder}FB2EPubConverter\genrestransfer.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BaseFolder}FB2EPubConverter\changes.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BaseFolder}Fb2ePub\prompt.cmd"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BaseFolder}Fb2ePub\readme_en.htm"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BaseFolder}Fb2ePub\epub-logo-color-book.ICO"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BaseFolder}Fb2ePub\license.docx"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#BuildFolder86}FBE2EpubPlugin.dll"; DestDir: "{app}"; Flags: regserver 32bit

; x64
Source: "{#BuildFolder64}Fb2ePub.exe"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}Fb2ePub.exe.config"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}Fb2ePubGui.exe"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}Fb2ePubGui.exe.config"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}RegisterFB2EPub.exe"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}RegisterFB2EPub.exe.config"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}ru\*"; DestDir: "{app}\ru"; Check: Is64BitInstallMode;  Flags: recursesubdirs createallsubdirs
Source: "{#BuildFolder64}ChilkatDotNet2.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}EPubLibrary.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}FB2EPubConverter.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}FB2EPubConverter.dll.config"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}Fb2EpubExt_x64.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: regserver 
Source: "{#BuildFolder64}Fb2epubSettings.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}Fb2FixLib.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}FB2Library.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}FolderSettingsHelper.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}FontSettings.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}ICSharpCode.SharpZipLib.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}ISOLanguages.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}log4net.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}TranslitRu.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}XHTMLClassLibrary.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 
Source: "{#BuildFolder64}XMLFixerLibrary.dll"; DestDir: "{app}"; Check: Is64BitInstallMode; Flags: 

;x86
Source: "{#BuildFolder86}Fb2ePub.exe"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags:
Source: "{#BuildFolder86}Fb2ePub.exe.config"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags: ignoreversion
Source: "{#BuildFolder86}Fb2ePubGui.exe"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags: 
Source: "{#BuildFolder86}Fb2ePubGui.exe.config"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags: ignoreversion
Source: "{#BuildFolder86}RegisterFB2EPub.exe"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags:
Source: "{#BuildFolder86}RegisterFB2EPub.exe.config"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags: ignoreversion
Source: "{#BuildFolder86}ru\*"; DestDir: "{app}\ru"; Check: not Is64BitInstallMode; Flags: createallsubdirs recursesubdirs
Source: "{#BuildFolder86}ChilkatDotNet2.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode; 
Source: "{#BuildFolder86}EPubLibrary.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode; 
Source: "{#BuildFolder86}FB2EPubConverter.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode;  Flags: 
Source: "{#BuildFolder86}FB2EPubConverter.dll.config"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags: ignoreversion
Source: "{#BuildFolder86}Fb2EpubExt.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode; 
Source: "{#BuildFolder86}Fb2epubSettings.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode; 
Source: "{#BuildFolder86}Fb2FixLib.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode; 
Source: "{#BuildFolder86}FB2Library.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode; 
Source: "{#BuildFolder86}FolderSettingsHelper.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode; 
Source: "{#BuildFolder86}FontSettings.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode; 
Source: "{#BuildFolder86}ICSharpCode.SharpZipLib.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags: 
Source: "{#BuildFolder86}ISOLanguages.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags: 
Source: "{#BuildFolder86}log4net.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags: 
Source: "{#BuildFolder86}TranslitRu.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags: 
Source: "{#BuildFolder86}XHTMLClassLibrary.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags: 
Source: "{#BuildFolder86}XMLFixerLibrary.dll"; DestDir: "{app}"; Check: not Is64BitInstallMode; Flags: 
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"; Flags: excludefromshowinnewinstall
Name: "{group}\FB2ePub Command Prompt"; Filename: "{app}\prompt.cmd"; Flags: excludefromshowinnewinstall
Name: "{group}\FB2ePub GUI"; Filename: "{app}\Fb2ePubGui.exe"; 
Name: "{group}\Register FB2ePub"; Filename: "{app}\RegisterFB2EPub.exe"; Flags: excludefromshowinnewinstall

[CustomMessages]
en.register_ext=Register shell extensions
ru.register_ext=���������������� ���������� �������� Windows


#include "scripts\products.iss"
#include "scripts\products\winversion.iss"
#include "scripts\products\stringversion.iss"
#include "scripts\products\fileversion.iss"
#include "scripts\products\dotnetfxversion.iss"
#include "scripts\products\msi45.iss"
#include "scripts\products\dotnetfx45.iss"
#include "scripts\products\vcredist2012.iss"

[Run]
Filename: "{dotnet40}\RegAsm.exe"; Parameters: "/codebase ""{app}\FB2EPubConverter.dll"" /n"; Flags: runascurrentuser waituntilterminated runhidden; WorkingDir: {app};
Filename: "{app}\RegisterFB2EPub.exe"; Description: {cm:register_ext} ; Flags: postinstall runascurrentuser waituntilterminated runhidden; Parameters: /r; StatusMsg: "Registering file extensions"


[UninstallRun]
Filename: "{app}\RegisterFB2EPub.exe"; Flags: runascurrentuser waituntilterminated; Parameters: /u; 
Filename: "{dotnet40}\RegAsm.exe"; Parameters: "/u ""{app}\FB2EPubConverter.dll"" /n"; Flags: runascurrentuser runhidden; WorkingDir: {app};

[Registry]
Root: HKLM32; Subkey: "Software\Haali\FBE\Plugins"; Flags: uninsdeletekeyifempty ;
Root: HKLM32; Subkey: "Software\Haali\FBE\Plugins\{{469E5867-292A-4A8D-B094-5F3597C4B353}"; Flags: uninsdeletekey; ValueName:""; ValueData: "Export FB2 to ePub"; ValueType: string ;
Root: HKLM32; Subkey: "Software\Haali\FBE\Plugins\{{469E5867-292A-4A8D-B094-5F3597C4B353}"; Flags: uninsdeletekey; ValueName: "Icon"; ValueData: "{app}\FBE2EpubPlugin.dll"; ValueType: string;
Root: HKLM32; Subkey: "Software\Haali\FBE\Plugins\{{469E5867-292A-4A8D-B094-5F3597C4B353}"; Flags: uninsdeletekey; ValueName: "Menu"; ValueData: "To ePub"; ValueType: string;
Root: HKLM32; Subkey: "Software\Haali\FBE\Plugins\{{469E5867-292A-4A8D-B094-5F3597C4B353}"; Flags: uninsdeletekey; ValueName: "Type"; ValueData: "Export"; ValueType: string;

Root: HKCU; Subkey: "Software\FBETeam\FictionBook Editor\Plugins"; Flags: uninsdeletekeyifempty ;
Root: HKCU; Subkey: "Software\FBETeam\FictionBook Editor\Plugins\{{469E5867-292A-4A8D-B094-5F3597C4B353}"; Flags: uninsdeletekey; ValueName:""; ValueData: "Export FB2 to ePub"; ValueType: string ;
Root: HKCU; Subkey: "Software\FBETeam\FictionBook Editor\Plugins\{{469E5867-292A-4A8D-B094-5F3597C4B353}"; Flags: uninsdeletekey; ValueName: "Icon"; ValueData: "{app}\FBE2EpubPlugin.dll"; ValueType: string;
Root: HKCU; Subkey: "Software\FBETeam\FictionBook Editor\Plugins\{{469E5867-292A-4A8D-B094-5F3597C4B353}"; Flags: uninsdeletekey; ValueName: "Menu"; ValueData: "To ePub"; ValueType: string;
Root: HKCU; Subkey: "Software\FBETeam\FictionBook Editor\Plugins\{{469E5867-292A-4A8D-B094-5F3597C4B353}"; Flags: uninsdeletekey; ValueName: "Type"; ValueData: "Export"; ValueType: string;


[Code]
function InitializeSetup(): boolean;
begin
	//init windows version
	initwinversion();

	msi45('4.5');
  dotnetfx45();
  vcredist2012();

	Result := true;
end;
