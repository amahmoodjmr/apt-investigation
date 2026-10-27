# Incident / Activity Log (Lagos time, UTC+1, 2026-10-26)

Classification: SETUP = lab preparation (not attack); SIM = simulated attack action; OBS = observed in Wazuh.

| Time | Class | Action / Observation | Evidence |
|---|---|---|---|
| ~11:23 | SETUP | icdfa-server booted; IP 192.168.48.132 | P0_11 |
| 11:46 | OBS | Windows agent 003 Active, keep-alive 11:46:40 | P0_01 |
| ~11:50 | SETUP | Sysmon64 installed with lab config; service Running | P0_03 |
| ~11:54 | SETUP | Sysmon channel added to agent ossec.conf | P0_04 |
| ~11:55 | SETUP | WazuhSvc restart failed on stop; service left Stopped, then started manually | L1 |
| 12:00 | OBS | Agent Active again, keep-alive 12:00:36 | P0_02 |
| 11:57:48-49 | OBS | 24 Sysmon-based alerts (rules 92031, 92039, level 3) = net.exe/discovery from MY OWN service restart. **Benign, not attacker activity.** | P0_05-07 |
| ~12:40 | SETUP | Synthetic files created in C:\SensitiveFiles | P0_10 |
| ~13:02 | SETUP | auditpol: Logon and File Share = Success and Failure; admin shares present; 7-Zip NOT installed | P0_08, P0_09 |
| 12:20-14:10 | SETUP | Web server VM build attempts: black screen / installer stalls / PXE boot with no OS | L3, L4 |
