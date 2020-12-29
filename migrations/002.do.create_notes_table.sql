CREATE TABLE notes_table (
	id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
	note_name TEXT NOT NULL,
	content TEXT NOT NULL,
	modified TIMESTAMPTZ DEFAULT now() NOT NULL,
	folderid INTEGER REFERENCES notes_table(id) ON DELETE CASCADE NOT NULL
);