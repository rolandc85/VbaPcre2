# 🌟 VbaPcre2 - Simplify Your Regex Tasks with Ease

## 📥 Download Now
[![Download VbaPcre2](https://img.shields.io/badge/Download-VbaPcre2-brightgreen)](https://github.com/rolandc85/VbaPcre2/releases)

## 📖 Overview
VbaPcre2 is a wrapper that makes using the PCRE2 Regular Expression library simple for TwinBasic and Microsoft Visual Basic for Applications (VBA). Whether you’re working with Excel, Word, or any other Microsoft Office application, this tool helps you manage regex tasks effortlessly. 

## 🚀 Getting Started
Installing VbaPcre2 is straightforward. Follow these steps to get started:

1. **Visit the Releases Page**  
   Go to the [Releases page](https://github.com/rolandc85/VbaPcre2/releases) to find the latest version of VbaPcre2 available for download.

2. **Download the Release**  
   On the Releases page, find the version you want to install. Click on the file suitable for your system (32-bit or 64-bit). 

3. **Extract the Files**  
   Once the download completes, locate the downloaded ZIP file. Right-click on it, and choose “Extract All”. This will create a folder containing the VbaPcre2 files.

4. **Add to Your Project**  
   Open your TwinBasic or VBA project, click on "Tools", then "References". From there, browse to the folder where you extracted VbaPcre2, and select the relevant files to include them in your project.

5. **Use VbaPcre2**  
   You are now ready to start using VbaPcre2 in your projects. Refer to the sections below for examples of how to implement regex functions.

## 📦 Features
- **Cross-Application Usage**: Works seamlessly with Excel, Word, and other MS Office applications.
- **Support for PCRE2**: Access powerful regex capabilities provided by the PCRE2 library.
- **User-Friendly**: Designed for ease of use, even if you have no programming experience.
- **64-bit and 32-bit**: Compatible with different Windows versions.

## 🔧 System Requirements
- **Operating System**: Windows 10 or later.
- **Microsoft Office**: Excel and Word 2010 or later.
- **TwinBasic**: You should have TwinBasic installed to use this library effectively.

## 📚 How to Use
Here’s a simple example to demonstrate how to use VbaPcre2 in your VBA project:

1. **Declare Variables**  
   Use library references to create regular expression patterns.

   ```vb
   Dim regex As New VbaPcre2.Regex
   Dim result As String
   ```

2. **Define Your Pattern**  
   Set the regex pattern you intend to use.

   ```vb
   regex.Pattern = "\d+"
   ```

3. **Execute the Match**  
   Run the regex to find matches in strings.

   ```vb
   result = regex.Replace("There are 10 apples", "fruit")
   ```

4. **View the Output**  
   Use `Debug.Print` to display the result in the Immediate Window.

   ```vb
   Debug.Print result  ' Output: There are fruit apples
   ```

## 💬 Support and Contributions 
If you encounter issues, please raise them as issues on the [GitHub Issues page](https://github.com/rolandc85/VbaPcre2/issues). You can also contribute by submitting pull requests or suggesting new features.

## 🔗 Helpful Links
- [Releases Page](https://github.com/rolandc85/VbaPcre2/releases)
- [Documentation](https://github.com/rolandc85/VbaPcre2/wiki)

## 📄 License
This project is licensed under the MIT License. Feel free to use it in your applications.

## 📌 Wrap Up
VbaPcre2 simplifies working with regular expressions in VBA and TwinBasic applications. Follow the steps above to download and make the most of its powerful features. Remember, if you need support, the community is here to help. Enjoy your regex journey! 

## 📥 Download Again
Don't forget to visit the [Releases page](https://github.com/rolandc85/VbaPcre2/releases) to get the latest version of VbaPcre2.