# TLDExtract-Lua
This repository extracts the top level domain using Mozilla's public suffix list from this URL:

https://publicsuffix.org/list/effective_tld_names.dat

**To Extract the Top Level Domain do:**
    
    1. require"TLDExtract"
    2. t = TLDExtract.create(url)
    3. t:getTld
