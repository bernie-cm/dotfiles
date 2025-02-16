# How to reduce friction when pushing code to Git

I was getting tired of doing `git add .`, `git commit -m "Message"`, and `git push`. So I created a shell function in my `.zshrc` to do a single command that executes the three steps.

```sh
function gpush() {
    local msg="${1:-Auto commit}"
    git add .
    git commit -m "$msg"
    git push
}
```
Now, I don't have to repeat the same three steps, but rather call the `gpush` function.

```sh
gpush "Commit message"
```
And done.
