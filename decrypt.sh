#!/bin/bash

cat << "EOF"
    _____              .___       ___.             ________                    __                   
 /     \ _____     __| _/____   \_ |__ ___.__.  /  _____/______ __ __  _____/  |_   _____ _______ 
/  \ /  \\__  \   / __ |/ __ \   | __ <   |  | /   \  __\_  __ \  |  \/    \   __\  \__  \\_  __ \
/    Y    \/ __ \_/ /_/ \  ___/   | \_\ \___  | \    \_\  \  | \/  |  /   |  \  |     / __ \|  | \/
/\____|__  (____  /\____ |\___  >  |___  / ____|  \______  /__|  |____/|___|  /__| /\ (____  /__|   
                \/     \/      \/    \/       \/\/              \/                 \/     \/      \/       
EOF

# Static DES key used by TightVNC
KEY="e84ad660c4721ae0"

# Hex input (e.g., 6bcf2a4b6e5aca0f)
read -p "Hexadecimal VNC password: " HEX

# Temporary files
ENC_FILE=$(mktemp)
DEC_FILE=$(mktemp)

# Convert hex to binary
echo "$HEX" | xxd -r -p > "$ENC_FILE"

# Decrypt using OpenSSL with DES-ECB
openssl enc -d -des-ecb -in "$ENC_FILE" -out "$DEC_FILE" -K "$KEY" -nopad 2>/dev/null

# Display result
echo -n "The password is: "
cat "$DEC_FILE"
echo

# Clean up temporary files
rm "$ENC_FILE" "$DEC_FILE"
