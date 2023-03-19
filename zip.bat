:: Remove old zip(s)
if exist Template.zip del Template.zip
:: Make new zip(s)
tar -C template -acf Template.zip *
