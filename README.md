# cli-final-project

This project allows a user to look through a database of cigar brands and then choose a brand to see all of the cigars associated with that brand.

## Getting Started

You can fork or clone this project repository from https://github.com/bgclarrk/cli-final-project

### Prerequisites

You can run the bundler to install all the necessary gems for this program:

```
nokogiri
open-uri
bundler
pry
```

### Installing

After cloning or forking the repository, open up a terminal and run the command "bin/run" to start the program

User will be greeted and prompted to either see a list of brands or exit the program

```
To see a list of cigar brands and their cigars, type 'Brands'.
```

after typing brands, the user will be intructed to select a page

```
Please choose a page number between 1 and 70:
```

The user can then either choose a different page or view the cigars for a page

```
To see a different page, type 'Brands' again.
To see a brand's cigars, type 'Cigars'.
```
The user can then choose cigars and view all the cigars for each brand

```
1. Chacaro Black Stallion Celebration
2. Chacaro Black Stallion Classic
3. Chacaro Black Stallion Colt
4. Chacaro Black Stallion Darkhan's Blue Ribbon
5. Chacaro Black Stallion Filly
6. Chacaro Black Stallion Trophy
```s


## Built With

* [nokogiri](https://nokogiri.org/)
* [Cigar Geeks](http://www.cigargeeks.com/)

## Contributing

Please read [CONTRIBUTING.md](https://github.com/bgclarrk/cli-final-project/blob/main/CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

1.0.0

## Authors

* **Brian Clark** - *Initial work* - [Cigar Scraper](https://github.com/bgclarrk/cli-final-project)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Nokogiri
* Learn Co
