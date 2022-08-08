# git-patch
## Manage all your git patches in an easy way

### Installation
```bash
git clone https://github.com/Mayday1990/git-patch.git && cd git-patch && make install
```
Make sure you have following directory in path:

`~/.local/bin/git-patch`

For autocompletion, the code is available under

`~./bash_completion.d/git-patch`

Make sure you are sourcing this file.

File `.bash_completion` is provided which will source (if placed at `~/.bash_completion`) every file under `~./bash_completion.d/` directory, but feel free to source it as you wish.
### Features
* Create (&apply) a patch
    * From current changes: `git patch create --name mypatch.patch`
    * From current changes in several files: `git patch create --name mypatch.patch file1 file2 file3`
    * From current changes in directories: `git patch create --name mypatch.patch dir1/ dir2/`
    * From current changes using globbing: `git patch create --name mypatch.patch *.py`
* List your patches
    * All: `git patch list`
    * Applied: `git patch list --applied`
    * Not applied: `git patch list --not-applied`
* Revert a patch: `git patch revert mypatch.patch`
* Apply a previously created patch: `git patch apply mypatch.patch`
* Remove a patch: `git patch rm mypatch.patch`