![](https://img.shields.io/badge/Microverse-blueviolet)

# Project Name : Blog App

> The Blog app will be a classic example of a blog website. I will create a fully functional website that will show the list of posts and empower readers to interact with them by adding comments and liking posts.

## Built With

- Ruby
- Ruby on rails
- postgresql

## Development set up

Clone Repository using

`git clone git@github.com:amrendrakind/blog-app.git`

Or using HTTPS

`git clone https://github.com/amrendrakind/blog-app.git`

Move into project directory

`cd blog-app`

### Setup Database 
- Make sure that your Postgres database is installed.
-  Open the file config\database.yml
- Modify the connection parameters to point your Postgres      Database:
    `username: [your_user]`
    `password: [your_password]`

- If required drop existing database : `rake db:drop`
- Create databases: `rake db:create`
- Create db structure including tables : `rake db:migrate`
- If required seed initial data (stored in db\seeds.rb file): `rails db:seed`

### Run Tests
- Install rspec: `bundle install`
- Run all tests: `rspec`
- Run all tests and show test documentation: `rspec spec --format documentation`

### Run App
- If required (Not for testing) run `rails server`
- Visit http://localhost:3000/ in your browser!

## Author

👤 **Amrendra K**

- GitHub: [@amrendrakind](https://github.com/amrendrakind)
- Twitter: [@amrendrak_](https://twitter.com/amrendrak_)
- LinkedIn: [amrendraakumar](https://linkedin.com/in/amrendraakumar)

👤 **Elio Cortés**

- GitHub: [@NeckerFree](https://github.com/NeckerFree)
- Twitter: [@ElioCortesM](https://twitter.com/ElioCortesM)
- LinkedIn: [elionelsoncortes](https://www.linkedin.com/in/elionelsoncortes/)

 👤 **Alejandro Neira**
- GitHub: [@AlejandroNeira98](https://github.com/AlejandroNeira98)
- Twitter: [@JANP_19](https://twitter.com/JANP_19)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/alejandro-neira-pachon/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/amrendrakind/blog-app/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse team for guidance

## 📝 License

This project is [MIT](./MIT.md) licensed.
