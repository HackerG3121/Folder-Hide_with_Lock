# 🔐 Folder Locker - Windows Batch File Security Tool

A lightweight Windows batch script utility to hide and password-protect a folder using native Windows features. Perfect for securing sensitive files without installing third-party software.

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Platform](https://img.shields.io/badge/platform-Windows-0078D6.svg)
![Language](https://img.shields.io/badge/language-Batch-89e051.svg)

## 🎯 Features

- **Password Protection**: Secure your folder with a custom password
- **Hidden Folder**: Makes the folder invisible in File Explorer
- **System Disguise**: Renames folder to look like a Windows Control Panel component
- **No Installation Required**: Pure batch script - runs on any Windows system
- **Lightweight**: Less than 2KB file size
- **Easy to Use**: Simple command-line interface

## 🚀 How It Works

The script uses Windows built-in `attrib` command to:
1. Rename your folder to a Control Panel CLSID (Class Identifier)
2. Apply hidden (`+h`) and system (`+s`) attributes
3. Make the folder invisible and protected from casual access

**Note**: This is **basic security** suitable for privacy, not military-grade encryption. It prevents casual browsing but can be bypassed by advanced users.

## 📋 Prerequisites

- Windows OS (7, 8, 10, 11)
- Administrator privileges (recommended)
- Basic command-line knowledge

## 🛠️ Setup & Installation

### Step 1: Download the Script

**Option A: Clone the repository**
```bash
git clone https://github.com/HackerG4544/folder-locker.git
cd folder-locker
```

**Option B: Manual download**
1. Download `folder-locker.bat` from this repository
2. Save it to your desired location

### Step 2: Configure Your Password

Open `folder-locker.bat` in a text editor and locate line 44:

```batch
if NOT "%password%"=="Giri3121@2007" goto FAIL
```

Replace `Giri3121@2007` with your custom password:

```batch
if NOT "%password%"=="YourSecurePassword123" goto FAIL
```

**⚠️ Important**: Choose a strong password and remember it!

### Step 3: Place the Script

Move `folder-locker.bat` to the directory where you want to create the private folder.

## 📖 Usage Guide

### First Time Setup

1. **Run the script** (double-click `folder-locker.bat`)
2. A `Private` folder will be created automatically
3. Place your sensitive files inside the `Private` folder

### Locking the Folder

1. Run `folder-locker.bat`
2. When prompted: `Do you want to LOCK the Private folder? (Y/N)`
3. Type `Y` and press Enter
4. The `Private` folder will disappear from view

### Unlocking the Folder

1. Run `folder-locker.bat`
2. Enter your password when prompted
3. The `Private` folder will reappear with all your files

## 🎬 Demo

```
============================================
          FOLDER LOCKER UTILITY
============================================

Do you want to LOCK the Private folder? (Y/N)
=> Y

[SUCCESS] Private folder has been locked and hidden!
```

## 🔧 Advanced Configuration

### Changing the Disguise Name

The script uses this Control Panel CLSID by default:
```batch
Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}
```

You can change it to other Windows CLSID values for different disguises:
- `{645FF040-5081-101B-9F08-00AA002F954E}` - Recycle Bin
- `{20D04FE0-3AEA-1069-A2D8-08002B30309D}` - My Computer
- `{208D2C60-3AEA-1069-A2D7-08002B30309D}` - Network Neighborhood

### Customizing Colors

Modify line 2 to change the console color:
```batch
color 0A    # Green on Black (current)
color 0C    # Red on Black
color 0E    # Yellow on Black
color 0B    # Cyan on Black
```

## ⚠️ Security Considerations

**What This Protects Against:**
- ✅ Casual browsing by family/roommates
- ✅ Quick searches in File Explorer
- ✅ Accidental file access

**What This Does NOT Protect Against:**
- ❌ Advanced users who know the CLSID trick
- ❌ Forensic analysis tools
- ❌ Users with administrator access running `attrib -h -s`
- ❌ Command-line exploration with `dir /a`

**For Serious Security Needs:**
- Use BitLocker (Windows Pro/Enterprise)
- Use VeraCrypt for encrypted containers
- Use 7-Zip with AES-256 encryption

## 🐛 Troubleshooting

### Folder Doesn't Hide
- **Solution**: Run the script as Administrator (right-click → Run as administrator)

### Can't Find the Script After Locking
- **Solution**: The script is still there! Enable "Show hidden files" in File Explorer temporarily

### Forgot Password
- **Solution**: Open the `.bat` file in Notepad to view the password in line 44

### Script Doesn't Run
- **Solution**: Ensure the file extension is `.bat`, not `.bat.txt`

## 📁 Project Structure

```
folder-locker/
│
├── folder-locker.bat       # Main script
├── README.md               # Documentation (you're here!)
├── LICENSE                 # MIT License
└── .gitignore             # Git ignore file
```

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

**Ideas for contributions:**
- Multiple folder support
- Encryption integration
- GUI version
- Linux/macOS alternative scripts
- Enhanced security features

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👤 Author

**Giri A**
- GitHub: [@HackerG4544](https://github.com/HackerG4544)
- LinkedIn: [giri-a](https://www.linkedin.com/in/giri-a)
- Twitter: [@Giri3121A](https://twitter.com/Giri3121A)

## 🌟 Acknowledgments

- Inspired by classic Windows folder-hiding techniques
- Built for educational purposes and privacy protection
- Special thanks to the cybersecurity community

## ⭐ Show Your Support

If you found this project helpful, please consider:
- Giving it a ⭐ star on GitHub
- Sharing it with others who might benefit
- Contributing improvements or reporting bugs

---

**Disclaimer**: This tool is for educational and personal privacy purposes only. The author is not responsible for misuse or any damage caused by this software. Always backup important files before using security scripts.

## 📚 Additional Resources

- [Windows Batch Scripting Guide](https://ss64.com/nt/)
- [File Attributes Documentation](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/attrib)
- [CLSID List Reference](https://www.tenforums.com/tutorials/3123-clsid-key-guid-shortcuts-list-windows-10-a.html)

---

<div align="center">
Made with 💚 by Giri A | Cybersecurity Enthusiast
</div>
