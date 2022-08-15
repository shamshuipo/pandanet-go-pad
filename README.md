# Pandanet Go

Pandanet Go Android apk patch for pad version

### Note
```bash
./apktool d panda-6.6.apk
# patching ...
./apktool b panda-6.6
cp panda-6.6/dist/panda-6.6.apk ./panda-6.6-dist.apk
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore panda.keystore panda-6.6-dist.apk pandakey
cp ./panda-6.6-dist.apk ./panda-6.6-signed.apk
```
