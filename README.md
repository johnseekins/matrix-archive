# matrix-archive

Archive Matrix room messages.

Creates a YAML log of all room messages, including media.

## Installation

```bash
git clone git@github.com:johnseekins/matrix-archive.git
cd matrix-archive
pipenv install
```

## Usage

1. Download your E2E room keys: in the client Element you can do this by
   clicking on your profile icon, _Security & privacy_, _Export E2E room keys_.
2. Run with an optional directory to store output, e.g.: `./matrix-archive.py chats`
3. You'll be prompted to enter your homeserver, user credentials and the path
   to the room keys you downloaded in step 1.
4. You'll be prompted to select which room you want to archive and a YAML file
   with a log of all messages will be written along with media and member
   avatars.
