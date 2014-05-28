Sprout Gulp + Browserify
========================

Leveraging useful Gulp recipes and the power of browserify to create a nice front-end workflow. Currently, this template assumes you are writing in **Coffeescript** and want Livereload out of the box.

### Installation

- `npm install sprout -g`
- `sprout add gulp-browserify https://github.com/carrot/sprout-gulp-browserify.git`

### Execution

- `sprout init gulp-browserify`

### Gulp Structure

Gulp tasks are broken up individually and placed within the `/gulp` folder. There is no need to manually require tasks as they are automatically required provided they are placed in this directory.

```
/gulp
  |
  ├── /tasks
       ├── <task.coffee>
       ├── <task.coffee>
       ├── <..>
```

### Options

> Coming Soon

* _JS or coffeescript_
* _script directory location?_
* _build destination?_
