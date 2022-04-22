### An attempt to build TENEX.

Status as of 2022-04-22.

- A TENEX toolchain was bootstrapped on TOPS-20 V3.
- The SUMEX-AIM monitor was assembled and linked successfully.
- Various updates were made to Cornwell's PDP-10 emulator.
- The resident part can be run on the PDP-10 emulator, either loaded
  directly or through TENDMP on DECtape.
- The swappable monitor will load and run from DECtape.
- Mini-exec works.
- EXEC.SAV can be loaded and run from DECtape.

This does not yet work:

- DLUSER emits error messages when it creates directories.
- MINI-DUMPER can't read or write tapes properly.
- Rebooting with SYSGO$G or SYSGO1$G doesn't work.
