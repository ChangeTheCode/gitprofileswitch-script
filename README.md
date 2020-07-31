# Switch easily your git user

This powershell script provides you the possibility to easily change your git user. For example you have git user for our work and for some private work. 

Here you can define in the object your profile 

```
@{ 
    profilekind = "private"
    name = "maxmustermann"
    mail = "max.mustermann@provider.en"
}, 
```

To use the this script you can call the following command in your powershell or command line:

> .\gitProfileSwitch-script.ps1 -profilekind "work"

