# Switch easily your git user

This powershell script provides you the possibility to easily change your git user. For example you have git user for our work and for some private work. 

Here you can define in the config.json file your profiles

```json
{
    "profiles": [
        {
            "profilekind" : "private",
            "name" : "name of user",
            "mail" : "email-address"
        },
        {
            "profilekind" : "work",
            "name" : "name of user",
            "mail" : "email-address"
        }
    ]
}
```

To use the this script you can call the following command in your powershell:

> .\gitProfileSwitch-script.ps1 -profilekind "work"

