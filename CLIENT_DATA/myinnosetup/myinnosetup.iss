; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "myinnosetup"
#define MyAppVersion "1.5"
#define MyAppPublisher "uib gmbh"
#define MyAppURL "http://www.opsi.org"
#define MyAppExeName "MyProg.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{2BDCE7D1-25D5-4825-AE22-9369257ECBEB}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=W:\opsi-winst-test\CLIENT_DATA\test-files\testFiles
OutputBaseFilename=myinnosetup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "MyProg.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: "MyProg.exe"; DestDir: "{userappdata}";

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
; Start "Software\My Company\My Program" keys under HKEY_CURRENT_USER
; and HKEY_LOCAL_MACHINE. The flags tell it to always delete the
; "My Program" keys upon uninstall, and delete the "My Company" keys
; if there is nothing left in them.
Root: HKCU; Subkey: "Software\opsi.org"; Flags: uninsdeletekeyifempty
Root: HKCU; Subkey: "Software\opsi.org\test"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\opsi.org\test\test"; ValueType: string; ValueName: "Path"; ValueData: "{app}"
Root: HKLM; Subkey: "Software\opsi.org"; Flags: uninsdeletekeyifempty
Root: HKLM; Subkey: "Software\opsi.org\test"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\opsi.org\test\test"; ValueType: string; ValueName: "Path"; ValueData: "{app}"

