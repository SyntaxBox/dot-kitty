# DOT-KITTY (Kitty Terminal Installer)

This repository contains a script to install the latest version of the Kitty terminal emulator and copy configuration files to the appropriate directory.

## Installation Steps

### 1. Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/cargopip/dot-kitty.git
cd dot-kitty
```

### 2. Ensure Configuration Files are Present

Make sure the `current-theme.conf` and `kitty.conf` files are in the repository's root directory. These files will be copied to the Kitty configuration directory.

### 3. Run the Installation Script

Execute the `install_kitty.sh` script to install Kitty, set up symbolic links, add Kitty to the PATH, and copy the configuration files:

```bash
chmod +x install_kitty.sh
./install_kitty.sh
```

### 4. Verify Installation

After the script completes, you can verify the installation by running:

```bash
kitty --version
```

## Configuration Files

The script copies `current-theme.conf` and `kitty.conf` to the `~/.config/kitty` directory. You can customize these files according to your preferences.

### Example `kitty.conf`

```conf
include current-theme.conf
font_size 12.0
background_opacity 0.9
```

### Example `current-theme.conf`

```conf
foreground #dcdccc
background #3f3f3f
color0 #3f3f3f
color1 #705050
color2 #60b48a
color3 #dfaf8f
color4 #506070
color5 #dc8cc3
color6 #8cd0d3
color7 #dcdccc
color8 #709080
color9 #dca3a3
color10 #c3bf9f
color11 #f0dfaf
color12 #94bff3
color13 #ec93d3
color14 #93e0e3
color15 #ffffff
```

## Notes

- Ensure that `curl` and other necessary dependencies are installed before running the script.
- The script sets up symbolic links for `kitty` and `kitten` in `~/.local/bin`.
- Adds `~/.local/bin` to the PATH if it's not already present in `.bashrc` and `.zshrc`.

## License

This project is licensed under the [MIT License](LICENSE).

## Contributing

We welcome contributions to improve and expand this project! To contribute, please follow these steps:

1. **Fork the Repository**: Create a personal fork of the repository on GitHub.
2. **Clone Your Fork**: Clone your forked repository to your local machine.

   ```bash
   git clone https://github.com/cargopip/dot-kitty
   cd dot-kitty
   ```

3. **Create a Branch**: Create a new branch for your feature or bug fix.

   ```bash
   git checkout -b feature-or-bugfix-name
   ```

4. **Make Changes**: Make your changes or additions. Ensure your code follows the project's coding standards and is properly documented.
5. **Commit Changes**: Commit your changes with a clear and concise commit message.

   ```bash
   git add .
   git commit -m "Description of your changes"
   ```

6. **Push Changes**: Push your changes to your forked repository.

   ```bash
   git push origin feature-or-bugfix-name
   ```

7. **Create a Pull Request**: Go to the original repository on GitHub and create a pull request from your forked repository and branch. Provide a detailed description of your changes and the reasons for them.

We appreciate your efforts and contributions to the project. Thank you for helping make this project better!
