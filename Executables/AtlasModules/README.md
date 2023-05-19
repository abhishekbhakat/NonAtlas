# Sources
To verify the legitmacy of these binaries (executables), there is information provided here for each binary for hashes, sources and when each was last verified/checked with the SHA256 hash. Verified using `Get-FileHash` in PowerShell.

### File Picker
- Directory: `\AtlasModules\Tools\filepicker.exe`
- SHA256 Hash: `10A9AB81DE68A6ACEBD6E0D393ECC8869A4DAE852F78CF9093740AD8752DA0DE`
- Source: https://github.com/Atlas-OS/Atlas-Utilities/releases/download/filepicker-rs-v0.1/filepicker.exe
- Repository: https://github.com/Atlas-OS/Atlas-Utilities
- Last Verified: 2022-03-05 by he3als

### Multi-Choice
- Directory: `\AtlasModules\Tools\multichoice.exe`
- SHA256 Hash: `6AB2FF0163AFE0FAC4E7506F9A63293421A1880076944339700A59A06578927D`
- Source: https://github.com/Atlas-OS/Atlas-Utilities/releases/download/multichoice-v0.4/multichoice-compressed.exe
- Repository: https://github.com/Atlas-OS/Atlas-Utilities
- Last Verified: 2022-03-05 by he3als
- Renamed to `multichoice.exe`

In Windows, the service startup types define how a service should be started when the operating system boots. The different startup types are represented by numeric values, typically ranging from 0 to 4, and each value has a specific meaning:
 - Automatic (0 or SERVICE_AUTO_START): The service starts automatically when the operating system boots. This is the default startup type for many services. The service will start even if no user is logged in.
 - Manual (1 or SERVICE_DEMAND_START): The service does not start automatically when the operating system boots. It requires manual intervention or a programmatic request to start. The service starts when it is explicitly requested by a user or another service/application that depends on it.
 - Disabled (2 or SERVICE_DISABLED): The service is disabled and will not start, even if requested. It remains inactive and does not consume system resources. This is useful for services that are not required or may cause conflicts or issues if started.
 - Automatic (Delayed Start) (3 or SERVICE_DELAYED_START): This startup type is similar to the Automatic startup type (0), but it delays the service's start until a certain time after the operating system has finished booting. This allows critical system services to start first, reducing the impact on system resources during the boot process.
 - Automatic (Trigger Start) (4 or SERVICE_TRIGGER_START): This startup type allows a service to be started based on specific trigger events, such as the launch of a specific program, a network connection, or a hardware event. The service starts automatically when the specified trigger condition is met.