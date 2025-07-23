---
name: Onboarding a New Team Member
---

# New Member
How exciting, a new team member has joined Team Spiral Racing. Wether they be a driver, staff, or admin follow the steps below to ensure they have a proper onboarding. For the basics, they should:
1. Be provisioned a Team Spiral Racing email address.
2. Setup email forwarding.
3. Create an account for [Team Spiral Racing Web](/technical-systems/tsr-web).

## Provisioning a TSR Email
In order to provision a TSR email you must have access to the Team Spiral Racing Square Space domain.
1. Log into [Square Space Domains](https://account.squarespace.com/domains/managed/teamspiralracing.com) for TSR.
2. Select "Email" on the right and select "Add Rule".
3. It will prompt to resolve 2FA, do that then proceed to the next screen.
4. On the top, add the new members email. Format is `<firstName>.<lastName>@teamspiralracing.com` (ex. `jonathan.lo@teamspiralracing.com`). 
5. On the bottom, add the member existing email address. It should be one that the member checks frequently.
![](/operations/squarespace-forward.png)

## Setup Email Forwarding
This is quite a complex topic and is different for each email provided. Below is how to do it for Gmail.
1. Ask the member to enable 2FA on their Google account. Steps are [here](https://support.google.com/accounts/answer/185839?hl=en&co=GENIE.Platform%3DDesktop).
2. Ask the member to navigate to their [Google App Passwords](https://myaccount.google.com/apppasswords). Under "App name", add in "Team Spiral MX - \<MEMBER NAME\>".
![](/operations/google-app-password.png)
3. Ask the member to hit create and they will get a password similar to "ydyq mgkx crgj ehqu". Save this somewhere handy.
4. Ask the member to navigate to their Gmail. Go to Settings -> See all settings -> Accounts and Import. Under "Send mail as", select "Add another email address".
5. Under name, add the name the member wants to call it. Popular choice is `<NAME> - TSR` (ex. `Jonathan Lo - TSR)`. Under email address, the member will input the Team Spiral Racing email address provisioned. Ensure "Treate as an alias" is checked.
![](/operations/email-1.png)
6. Input the following details into the next screen:
    - SMTP Server: `smtp.gmail.com`
    - Port: `465`
    - Username: `jonathanlo411@gmail.com`
    - Password: *The 16 digit app password from before (looks like `ydyq mgkx crgj ehqu`)*
    - Connection: SSL
![](/operations/email-2.png)
7. It should now have been added. To verify, select the verify next to the email. It will send an email to the inbox if done correctly. Open it and open the link inside to verify the email.
8. All TSR members are required to have an email signature set up. Go to Settings -> General and scroll down to Signature. Use the following below as a template:
```
Kind regards,
Jonathan Lo

<TSR LOGO HERE>
jonathan.lo@teamspiralracing.com
https://www.teamspiralracing.com/
```
9. Select Create new. Also change the Signature defaults to the TSR email.
10. Test it. Create a new email. In the "From" inout, it should be a drop down. Select it and select the TSR email. It should look like the following if done correctly:
![](/operations/email-3.png)

## Creating an Account for TSR Web
This one is quite simple.
1. Ask the member to navigate to the [signup page](https://www.teamspiralracing.com/signup) and create an account with their Team Spiral Racing email.
2. Go into the MongoDB database and manually change their role to what they were onboarded on.