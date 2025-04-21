# 🔓 TightVNC Decryptor Script

A simple yet powerful script to decrypt the hexadecimal password stored in the Windows registry for TightVNC. 🛠️

## 🚀 Features
- Decrypts TightVNC passwords using a static DES key.
- Converts hexadecimal input to plaintext passwords.
- Utilizes OpenSSL for decryption.
- Lightweight and easy to use.

## 📜 How to Use
1. Clone this repository:
    ```bash
    git clone https://github.com/yourusername/TightVNC-Decryptor-script.git
    cd TightVNC-Decryptor-script
    ```

2. Make the script executable:
    ```bash
    chmod +x decryptor.sh
    ```

3. Run the script:
    ```bash
    ./decryptor.sh
    ```

4. Enter the hexadecimal TightVNC password when prompted:
    ```
    Hexadecimal VNC password: 6bcf2a4b6e5aca0f
    ```

5. Get the decrypted password:
    ```
    The password is: yourpassword
    ```

## 🛡️ Prerequisites
- **OpenSSL**: Ensure OpenSSL is installed on your system. You can install it using your package manager:
  ```bash
  sudo apt install openssl  # For Debian/Ubuntu
  brew install openssl      # For macOS
  ```

## ⚠️ Disclaimer
This script is intended for educational purposes and legitimate use only. Unauthorized use of this script to decrypt passwords without permission is illegal and unethical. Use responsibly. 🚨

## 📂 File Structure
```
TightVNC-Decryptor-script/
├── decryptor.sh  # The main script
└── README.md      # Documentation
```

## 🛠️ How It Works
1. The script uses a static DES key (`e84ad660c4721ae0`) to decrypt the TightVNC password.
2. It converts the provided hexadecimal password into binary format.
3. OpenSSL decrypts the binary data using DES-ECB mode.
4. The plaintext password is displayed.

## 🌟 Example
```bash
$ ./decryptor.sh
Hexadecimal VNC password: 6bcf2a4b6e5aca0f
The password is: mypassword123
```

## 📧 Support
If you encounter any issues or have questions, feel free to open an issue or contact me at [your-email@example.com](mailto:your-email@example.com). 💌

## 📝 License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

Happy decrypting! 🎉
