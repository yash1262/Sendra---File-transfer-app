# windows
# 32-bit
GOOS=windows GOARCH=386 go  build  -ldflags="-w -s" -gcflags=all=-l -o dist/windows/sendra-386.exe main.go
7z a -tzip ./dist/windows/sendra-386-windows.zip ./dist/windows/sendra-386.exe ./ui

# 64-bit
GOOS=windows GOARCH=amd64 go  build  -ldflags="-w -s" -gcflags=all=-l -o dist/windows/sendra-amd64.exe main.go
7z a -tzip ./dist/windows/sendra-amd64-windows.zip ./dist/windows/sendra-amd64.exe ./ui

# macos
# 64-bit
GOOS=darwin GOARCH=amd64 go  build  -ldflags="-w -s" -gcflags=all=-l -o dist/macos/sendra-amd64-darwin main.go
7z a -tzip ./dist/macos/sendra-amd64-darwin.zip ./dist/macos/sendra-amd64-darwin ./ui

# # linux
# # 64-bit
GOOS=linux GOARCH=amd64 go  build  -ldflags="-w -s" -gcflags=all=-l -o dist/linux/sendra-amd64-linux main.go
7z a -tzip ./dist/linux/sendra-amd64-linux.zip ./dist/linux/sendra-amd64-linux ./ui

# # 32-bit
GOOS=linux GOARCH=386 go  build -ldflags="-w -s" -gcflags=all=-l  -o dist/linux/sendra-386-linux main.go
7z a -tzip ./dist/linux/sendra-386-linux.zip ./dist/linux/sendra-386-linux ./ui

rm ./dist/linux/sendra-386-linux
rm ./dist/linux/sendra-amd64-linux
rm ./dist/macos/sendra-amd64-darwin
rm ./dist/windows/sendra-386.exe
rm ./dist/windows/sendra-amd64.exe
