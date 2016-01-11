/*
  VerseBot for reddit
  By Matthieu Grieger
  create_book_table.sql
  Copyright (c) 2015 Matthieu Grieger (MIT License)
*/

CREATE TABLE book_stats (
    id INTEGER PRIMARY KEY,
    book TEXT,
    t_count INTEGER DEFAULT 0,
    last_used DATETIME DEFAULT NULL
);

INSERT INTO book_stats (book) VALUES
	('Genesis'),
	('Exodus'),
	('Leviticus'),
	('Numbers'),
	('Deuteronomy'),
	('Joshua'),
	('Judges'),
	('Ruth'),
	('1 Samuel'),
	('2 Samuel'),
	('1 Kings'),
	('2 Kings'),
	('1 Chronicles'),
	('2 Chronicles'),
	('Ezra'),
	('Nehemiah'),
	('Esther'),
	('Job'),
	('Psalms'),
	('Proverbs'),
	('Ecclesiastes'),
	('Song of Songs'),
	('Isaiah'),
	('Jeremiah'),
	('Lamentations'),
	('Ezekiel'),
	('Daniel'),
	('Hosea'),
	('Joel'),
	('Amos'),
	('Obadiah'),
	('Jonah'),
	('Micah'),
	('Nahum'),
	('Habakkuk'),
	('Zephaniah'),
	('Haggai'),
	('Zechariah'),
	('Malachi'),
	('Matthew'),
	('Mark'),
	('Luke'),
	('John'),
	('Acts'),
	('Romans'),
	('1 Corinthians'),
	('2 Corinthians'),
	('Galatians'),
	('Ephesians'),
	('Philippians'),
	('Colossians'),
	('1 Thessalonians'),
	('2 Thessalonians'),
	('1 Timothy'),
	('2 Timothy'),
	('Titus'),
	('Philemon'),
	('Hebrews'),
	('James'),
	('1 Peter'),
	('2 Peter'),
	('1 John'),
	('2 John'),
	('3 John'),
	('Jude'),
	('Revelation'),
	('Judith'),
	('Wisdom'),
	('Tobit'),
	('Ecclesiasticus'),
	('Baruch'),
	('1 Maccabees'),
	('2 Maccabees'),
	('3 Maccabees'),
	('4 Maccabees'),
	('Prayer of Azariah'),
	('Additions to Esther'),
	('Prayer of Manasseh'),
	('1 Esdras'),
	('2 Esdras'),
	('Susanna'),
	('Bel and the Dragon');

CREATE TRIGGER update_book_stats_timestamp
AFTER UPDATE OF t_count ON book_stats
    BEGIN
        UPDATE book_stats
        SET last_used = datetime('now') WHERE id = NEW.id;
    END;