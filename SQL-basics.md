# SQL basics

Anything unclear, or you found a great addition?
Let any of the coaches know, so we can update the information.

## What's it all about?

SQL is a language to communicate with a database. This can be used independently (from software, for example) or run from PHP.

This allows us to connect our website with a database, opening up a lot of possibilities.

## Tools of trade

So, what do you need to get started?

**A database: MySQL (or MariaDB, but never both)**
This is included in your all in one pack you installed previously (Apache, MySQL, PHP).

**A database manager**

I couldn't find a fully supported window emoji, so 🎤 will represent *micro*soft.
All tools mentioned are either free, or have a free version for you to use.

- 🍎/🐧/🎤 PhpMyAdmin: runs in the browser for easy access, but never to be used in production (security concern).
- 🍎 SequelAce: successor to SequelPro.
- 🍎/🎤 TablePlus: good interface, limited open tabs in the free version.
- 🎤 HeidiSQL
- 🍎/🐧/🎤 Datagrip

## MySQL or MariaDB

![mariadb-vs-mysql.png](images/mariadb-vs-mysql.png)

You will find that many articles use the terms MySQL and MariaDB interchangeably, but there are different databases. They do have a shared history, and are the same for 95%.  
This means in practice that most projects can change from one db to another with probably only minor problems.  
MySQL used to be open-source, until it was acquired by Oracle, when some of the original developers of MySQL forked it due to concerns over its acquisition by Oracle Corporation.  
This fork was named "MariaDB", and is the new open source alternative for MySQL.  
Technically, MySQL is an open-source database, but in practice, it no longer feels like it. Under Oracle's umbrella, MySQL now has proprietary, closed-source modules, which was one of the main controversial changes that drove the community in two camps.

Technically there is not much difference between both versions, but in the last years MariaDB has being making more progress on performance, where it now outclasses MySQL for most use cases.  
To build the basic application in this exercise you will not notice a difference, but you can always [learn more about the differences](https://www.eversql.com/mariadb-vs-mysql/) between the vendors.

![mysqljoke.png](images/mysqljoke.jpg)

## Where to go from here

Since you've reached the hill, that means your research skills are pretty neat by now 🔬 Good job there!
Feel free to work with whatever documentation works best for you (video, text, ...).
And as always, our friends at W3schools offer some good [documentation](https://www.w3schools.com/sql/sql_syntax.asp) as well.

If you feel a bit overwhelmed when starting a new topic, remember:
- Focus your research: what exactly do I need at this moment?
- Examples are usually more helpful than a theoretical approach.
- Naming new things? Quickly check naming conventions.