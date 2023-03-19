:: Remove old zip(s)
if exist afk.zip del afk.zip
:: Make new zip(s)
tar -C afk -acf afk.zip *
