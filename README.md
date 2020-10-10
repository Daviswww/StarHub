# Lobarbon

## Installation
If you don't have [Ruby] please download.

Step1. Clone the [Lobarbon], if you have ``Bundler`` please jump to ``Step3``.
```bash=
$ git clone https://github.com/Lobarbon/Lobarbon.git
$ cd Lobarbon
```

Step2. Install ``Bundler`` package.
```bash=
$ gem install bundler
```

Step3. Install ``Gemfile`` package.
```bash=
$ bundle install
```

## Running the Application
Running a Roda application is similar to running any other rack-based application that uses a ``config.ru`` file. You can start a basic server using ``rackup``:
```bash=
$ rackup
```
Ruby web servers such as Unicorn and Puma also ship with their own programs that you can use to run a Roda application.

By default, the base URL we're targeting is [http://localhost:9292].


## Framework

- [Bulma]


## License
MIT


[Ruby]: https://www.ruby-lang.org/en/
[Lobarbon]: https://github.com/Lobarbon/Lobarbon.git
[http://localhost:9292]: http://localhost:9292
[Bulma]: https://bulma.io/documentation/
