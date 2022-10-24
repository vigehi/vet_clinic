
![](https://img.shields.io/static/v1?label=BY&message=edithoga&color=blue)

## Vet Clinic 

> The project contain database created using a relational database. to store the information for clinic, so you can store the information for all the animals that come and treat in this clinic and the visits, the specializations and the vets there. 

## Getting Started

This repository includes files with plain SQL that can be used to recreate a database:

### Requirements
- PostgreSQL server installed and running
- psql installed

### Clone this repository

```bash
$ git clone git@github.com:vigehi/vet-clinic.git
$ cd vet-clinic
```
1. Connect to your PostgreSQL server with `psql`
```bash
psql
```
2. Create the database `vet-clinic`
```bash
CREATE DATABASE vet-clinic;
```
3. Connect to your database `vet-clinic`
```bash
\c vet-clinic
```

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database.

## Screnshots

![Find all animals whose name ends in "mon".](/images/mon.png)
![List the name of all animals born between 2016 and 2019.](/images/dob.png)
![List the name of all animals that are neutered and have less than 3 escape attempts.](/images/att.png)
![List the date of birth of all animals named either "Agumon" or "Pikachu".](/images/two.png)
![List name and escape attempts of animals that weigh more than 10.5kg.](/images/kg.png)
![Find all animals that are neutered.](/images/true.png)
![Find all animals not named Gabumon.](/images/gabu.png)
![Find all animals with a weight between 10.4kg and 17.3kg (including the animals with the weights that equals precisely 10.4kg or 17.3kg)](/images/last.png)

## Authors

👤 **Edith**

 Platform | Badge |
 --- | --- |
 **GitHub**  | [@edith oga](https://github.com/vigehi)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./MIT.md) licensed.
