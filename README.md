## The task
Given a name and a sender, generate an ascii postcard like this:

```
+------------------------+
|                        |
|   We miss you, name!   |
|   Get well soon!       |
|                        |
|   -- sender            |
|                        |
+------------------------+
```

The left/right padding around the text should be 3 spaces (think about the edge case when the sender is loooong).
The padding above/below should be one line.
The sender should be prefixed with `-- `.

### concrete example

given:

* `name` = `Gábor Szabó`
* `sender` = `emarsys`

output:
```
+-------------------------------+
|                               |
|   We miss you, Gábor Szabó!   |
|   Get well soon!              |
|                               |
|   -- emarsys                  |
|                               |
+-------------------------------+
```

![plain postcard](https://gist.githubusercontent.com/tomb0y/78cd0581cab5013283cc11b659b08591/raw/a10b1718246934a64ccfd759dcb06328142e6105/plain.png)

## Bonus exercise

Accept two additional parameters called `text_color` and `background_color` and which accepts the following values:

* black
* red
* green
* yellow
* blue
* magenta
* cyan
* white

and output an accordingly colored postcard.

### concrete example

* `name` = `Gábor Szabó`
* `sender` = `emarsys`
* `text_color` = `red`
* `background_color` = `yellow`

output:

![colored postcard](https://gist.githubusercontent.com/tomb0y/78cd0581cab5013283cc11b659b08591/raw/a10b1718246934a64ccfd759dcb06328142e6105/color.png)

## setup/instructions (osx specific)

1. `brew install terminal-notifier`
2. `bundle install`
3. run `./bin/guard` (doesn't work from tmux :/)
4. start working
  * the tests will run every time you save a `.rb` file
  * you'll get osx notifications about the results
  * you can check the test output in guard
5. when all your tests are green, remove the next `skip: true` in `spec/postcard_spec.rb`
6. when there are no more skipped tests and everything is green, start `REFACTOR`ing in the `SMALL`est steps you can think of
7. profit!
