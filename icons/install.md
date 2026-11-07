### Icons

Here is how to change desktop icons.

#### Installation

1. Navigate to the icon folder for your application.
2. Select the appropriate icon file for your platform:
   - **macOS**: `.icns` files in the `mac/` folder.
   - **Unix/Linux**: `.png` files in the `unix/` folder.
   - **Windows**: `.ico` files in the `windows/` folder.

> Tip: Keep the original icon file path handy in case you want to revert later.

#### Activating icons

**macOS**

1. Go to the `Applications` folder.
2. Right-click on the application and select `Get Info`.
3. Drag the new icon on top of the current one (in the top left corner).
4. If the icon does not refresh, restart Finder or sign out and in again.

**Unix/Linux**

1. Find the related `.desktop` file with `locate program_name.desktop`.
2. Open the `.desktop` file you want to modify using `gedit /path/to/program_name.desktop`.
3. Modify the `Icon` field path.
4. Save the file and restart your desktop session if the icon does not refresh.

> Instructions may vary by distro.

**Windows**

1. Right-click on the application shortcut and select `Properties`.
2. Select the `Shortcut` tab.
3. Click the `Change Icon...` button.
4. Select the `.ico` file and click `Apply`.
