# scripts
Command-line utilities.

## `setup_pop_os.sh`

This script sets up a fresh installation of Pop!\_OS.
If any tasks have already been completed, it will skip those tasks.
Specifically, it does the following:
	- Remove directories
 	- Make directories
	- Clone repositories
	- Install programs
	- Add to PATH
	- Install fonts

Use the following command to run the script:

```bash
curl https://raw.githubusercontent.com/george-greene/scripts/refs/heads/main/setup_pop_os.sh \
-o setup_pop_os.sh \
&& chmod u+x ./setup_pop_os.sh \
&& ./setup_pop_os.sh \
&& rm ./setup_pop_os.sh
```
