# OpenCV

This repository used to Host the OpenCV XCFramework.

Steps to update the Framework.
1. Create a zip file for XCFramework. (Name should be `opencv2.xcframework.zip`)
2. Get the checksum of the Zipfile using
    `shasum -a 256 <path to zip file>`
3. Update the `checksum` and the `version` number in `Package.swift`
4. Create a new release from Github and upload the zipped xcframework as binary artifact.

