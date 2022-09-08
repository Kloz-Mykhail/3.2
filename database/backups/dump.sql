/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: authors
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `author` (`author`)
) ENGINE = InnoDB AUTO_INCREMENT = 29 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: books
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `books` (
  `title` varchar(200) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `pages` int DEFAULT NULL,
  `about` varchar(2000) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `count` int DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 25 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: books_authors
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `books_authors` (
  `bookId` int DEFAULT NULL,
  `author` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: authors
# ------------------------------------------------------------

INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (14, 'А. Белов');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (17, 'Александр Сераков');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (1, 'Андрей Богуславский');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (5, 'Брюс Эккель');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (8, 'Гэри Маклин Холл');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (23, 'Джей Макгаврен');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (9, 'Джеймс Р. Грофф');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (13, 'Джереми Блум');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (12, 'Джон Вудкок');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (24, 'Дрю Нейл');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (7, 'Дэвид Флэнаган');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (28, 'Клиффорд Штайн');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (10, 'Люк Веллинг');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (3, 'М. Вильямс');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (2, 'Марк Саммерфильд');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (22, 'Мартин Фаулер');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (19, 'Пол Дейтел');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (25, 'Прамодкумар Дж. Садаладж');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (20, 'Роберт Мартин');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (27, 'Рональд Ривест');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (11, 'Сергей Мастицкий');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (16, 'Сет Гринберг');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (15, 'Сэмюэл Грингард');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (18, 'Тим Кедлек');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (6, 'Томас Кормен');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (4, 'Уэс Маккинни');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (26, 'Чарльз Лейзерсон');
INSERT INTO
  `authors` (`id`, `author`)
VALUES
  (21, 'Энтони Грей');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: books
# ------------------------------------------------------------

INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'СИ++ И КОМПЬЮТЕРНАЯ ГРАФИКА',
    1999,
    356,
    'СИ++ И КОМПЬЮТЕРНАЯ ГРАФИКА',
    1,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'Программирование на языке Go!',
    1998,
    355,
    'Программирование на языке Go!',
    2,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'Толковый словарь сетевых терминов и аббревиатур',
    1997,
    354,
    'Толковый словарь сетевых терминов и аббревиатур',
    3,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'Python for Data Analysis',
    1996,
    353,
    'Python for Data Analysis',
    4,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'Thinking in Java (4th Edition)',
    1995,
    352,
    'Thinking in Java 4th Edition',
    5,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'Introduction to Algorithms',
    1921,
    351,
    'Introduction to Algorithms',
    6,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'JavaScript Pocket Reference',
    1994,
    350,
    'JavaScript Pocket Reference',
    7,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'Adaptive Code via C#: Class and Interface Design, Design Patterns, and SOLID Principles',
    1993,
    349,
    'Адаптивный код на С#, Class and Interface Design, Design Patterns, and SOLID Principles',
    8,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'SQL: The Complete Referenc',
    1992,
    348,
    'SQL: The Complete Referenc',
    9,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'PHP and MySQL Web Development',
    1991,
    347,
    'PHP and MySQL Web Development',
    10,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'Статистический анализ и визуализация данных с помощью R',
    1990,
    346,
    'Статистический анализ и визуализация данных с помощью R',
    11,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'Computer Coding for Kid',
    1885,
    345,
    'Computer Coding for Kid',
    12,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'Exploring Arduino: Tools and Techniques for Engineering Wizardry',
    2000,
    344,
    'Tools and Techniques for Engineering Wizardry',
    13,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'Программирование микроконтроллеров для начинающих и не только',
    2001,
    342,
    'Программирование микроконтроллеров для начинающих и не только',
    14,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'The Internet of Things',
    2002,
    341,
    'The Internet of Things',
    15,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'Sketching User Experiences: The Workbook',
    2003,
    340,
    'Sketching User Experiences: The Workbook',
    16,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  ('InDesign CS6', 2004, 339, 'InDesign CS6', 17, 0, 0);
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'Адаптивный дизайн. Делаем сайты для любых устройств',
    2005,
    338,
    'Адаптивный дизайн. Делаем сайты для любых устройств',
    18,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'Android для разработчиков',
    2006,
    337,
    'Android для разработчиков',
    19,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'Clean Code: A Handbook of Agile Software Craftsmanship',
    2007,
    336,
    'Clean Code: A Handbook of Agile Software Craftsmanship',
    20,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'Swift Pocket Reference: Programming for iOS and OS X',
    2008,
    335,
    'Swift Pocket Reference: Programming for iOS and OS X',
    21,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'NoSQL Distilled: A Brief Guide to the Emerging World of Polyglot Persistence',
    2009,
    334,
    'NoSQL Distilled: A Brief Guide to the Emerging World of Polyglot Persistence',
    22,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  (
    'Head First Ruby',
    2010,
    333,
    'Head First Ruby',
    23,
    0,
    0
  );
INSERT INTO
  `books` (
    `title`,
    `year`,
    `pages`,
    `about`,
    `id`,
    `count`,
    `deleted`
  )
VALUES
  ('Practical Vim', 2011, 332, 'Practical Vim', 24, 0, 0);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: books_authors
# ------------------------------------------------------------

INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (1, 1, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (2, 2, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (3, 3, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (4, 4, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (5, 5, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (6, 6, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (7, 7, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (8, 8, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (9, 9, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (10, 10, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (11, 11, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (12, 12, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (13, 13, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (14, 14, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (15, 15, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (16, 16, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (17, 17, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (18, 18, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (19, 19, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (20, 20, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (21, 21, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (22, 22, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (23, 23, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (24, 24, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (22, 25, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (6, 26, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (6, 27, 0);
INSERT INTO
  `books_authors` (`bookId`, `author`, `deleted`)
VALUES
  (6, 28, 0);

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
