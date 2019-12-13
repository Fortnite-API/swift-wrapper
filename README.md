<div align="center">

# Swift wrapper for [Fortnite-API.com](https://fortnite-api.com)

</div>

This repository offers an request API around the endpoints of [fortnite-api.com](https://fortnite-api.com).

## Installation

For now you have to install the source code but it will be uploaded to CocoaPods soon.

## Example

```swift
import fortnite_api

let cosmetic = fortnite_api.searchCosmetics(parameters: "name", value: "Renegade")
print(cosmetic.id)
```

## Documentation

To see the full documentation for this gem, please visit the [wiki](https://github.com/Fortnite-API/ruby-wrapper/wiki)

## License

Fortnite-API (MIT) [License](https://github.com/Fortnite-API/ruby-wrapper/blob/master/LICENSE "MIT License")

API developed by [Fortnite-API.com](https://fortnite-api.com/about)
