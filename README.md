# Blackfire for Lando
1. Copy `.env.example` to `.env` and enter the values for each Blackfire variable.
1. Run `lando start` to start the application.
1. Run `lando blackfire-agent-service start` to start the agent.
1. Run `lando blackfire curl https://blackfire.lndo.site` to profile the application.
