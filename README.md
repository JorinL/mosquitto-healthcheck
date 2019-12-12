Written for Alpine.

This script trys to subscribe to a local running mosquitto (default port 1883) and checks if that works.
Can be used with or without auth.


Environment Variables used:
TOPIC

USERNAME (optional)
PASSWORD (optional)

Script runs without timeout or anything, because rancher (which I use) has an timeout for healthcheck anyway (and timeout left zombies).
But it should be easy to adopt if wanted.
