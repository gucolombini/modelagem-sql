CREATE TABLE users (
 id BIGSERIAL,
 email VARCHAR(100),
 password_hash CHAR(60),
 researcher BOOLEAN DEFAULT 'false'
);


ALTER TABLE users ADD CONSTRAINT users_pkey PRIMARY KEY (id);

CREATE TABLE user_info (
 id BIGSERIAL,
 id_users INTEGER,
 age INTEGER(3),
 gender VARCHAR(30),
 education VARCHAR(30),
 housing VARCHAR(30),
 family_constitution VARCHAR(50),
 income VARCHAR(30),
 people_in_house INTEGER(3),
 country VARCHAR(30),
 state VARCHAR(30),
 city VARCHAR(30),
 neighborhood VARCHAR(30),
 first_name VARCHAR(50),
 last_name VARCHAR(50),
 social_name VARCHAR(50),
 phone INTEGER(20),
 contact_email VARCHAR(100)
);


ALTER TABLE user_info ADD CONSTRAINT user_info_pkey PRIMARY KEY (id);

CREATE TABLE have_dog (
 id BIGSERIAL,
 id_users INTEGER,
 name VARCHAR(50),
 gender VARCHAR(30),
 is_owner VARCHAR(50),
 neutered BOOLEAN,
 neuter_date DATE,
 time_with_dog TIME,
 is_first_dog BOOLEAN,
 other_dogs INTEGER(3),
 other_cats INTEGER(3),
 age VARCHAR(15),
 breed VARCHAR(30),
 origin VARCHAR(50),
 price INTEGER(15),
 age_arrived INTEGER(2),
 personality VARCHAR(200),
 id_why_dog INTEGER,
 other_why_dog VARCHAR(200),
 positives_dog VARCHAR(200),
 involved_in_decision VARCHAR(100),
 couldnt_keep_dog_before VARCHAR(200),
 vet_visits_year INTEGER(3),
 tell_adopter VARCHAR(200),
 contact BOOLEAN
);


ALTER TABLE have_dog ADD CONSTRAINT have_dog_pkey PRIMARY KEY (id);

CREATE TABLE want_dog (
 id BIGSERIAL,
 id_users INTEGER,
 size VARCHAR(10),
 fur_length VARCHAR(10),
 fur_color VARCHAR(30),
 gender VARCHAR(30),
 age INTEGER(2),
 breed VARCHAR(30),
 reason_want VARCHAR(200),
 name_idea VARCHAR(30),
 name_reason VARCHAR(200),
 want_buy BOOLEAN,
 bring_date DATE,
 desired_personality VARCHAR(200),
 expenses INTEGER(15),
 contact BOOLEAN
);


ALTER TABLE want_dog ADD CONSTRAINT want_dog_pkey PRIMARY KEY (id);

CREATE TABLE had_dog (
 id BIGSERIAL,
 id_users INTEGER,
 is_owner VARCHAR(50),
 personality VARCHAR(200),
 time_with_dog TIME,
 is_first_dog BOOLEAN,
 other_dogs INTEGER(3),
 other_cats INTEGER(3),
 age_arrived INTEGER(2),
 neutered BOOLEAN,
 neuter_date DATE,
 breed VARCHAR(30),
 origin VARCHAR(50),
 price INTEGER(15),
 id_why_dog INTEGER,
 other_why_dog VARCHAR(200),
 involved_name_decision VARCHAR(100),
 positives_first_weeks VARCHAR(200),
 negatives_first_weeks VARCHAR(200),
 vet_visits INTEGER(3),
 vet_reason VARCHAR(100),
 date_left DATE,
 age_left INTEGER(2),
 reason_left VARCHAR(200),
 live_new_dog BOOLEAN,
 live_new_dog_reason VARCHAR(200),
 contact BOOLEAN
);


ALTER TABLE had_dog ADD CONSTRAINT had_dog_pkey PRIMARY KEY (id);

CREATE TABLE why_dog (
 id BIGSERIAL,
 kids_company BOOLEAN,
 adults_company BOOLEAN,
 dogs_company BOOLEAN,
 appearance BOOLEAN,
 kids_responsibility BOOLEAN,
 friends_had BOOLEAN,
 protection BOOLEAN,
 friend_couldnt_keep BOOLEAN,
 save_life BOOLEAN,
 cute BOOLEAN,
 chose_me BOOLEAN,
 gift BOOLEAN
);


ALTER TABLE why_dog ADD CONSTRAINT why_dog_pkey PRIMARY KEY (id);

CREATE TABLE dont_want_dog (
 id BIGSERIAL,
 id_users INTEGER,
 reason VARCHAR(300)
);


ALTER TABLE dont_want_dog ADD CONSTRAINT dont_want_dog_pkey PRIMARY KEY (id);

ALTER TABLE user_info ADD CONSTRAINT user_info_id_users_fkey FOREIGN KEY (id_users) REFERENCES users(id);
ALTER TABLE have_dog ADD CONSTRAINT have_dog_id_users_fkey FOREIGN KEY (id_users) REFERENCES users(id);
ALTER TABLE have_dog ADD CONSTRAINT have_dog_id_why_dog_fkey FOREIGN KEY (id_why_dog) REFERENCES why_dog(id);
ALTER TABLE want_dog ADD CONSTRAINT want_dog_id_users_fkey FOREIGN KEY (id_users) REFERENCES users(id);
ALTER TABLE had_dog ADD CONSTRAINT had_dog_id_users_fkey FOREIGN KEY (id_users) REFERENCES users(id);
ALTER TABLE had_dog ADD CONSTRAINT had_dog_id_why_dog_fkey FOREIGN KEY (id_why_dog) REFERENCES why_dog(id);
ALTER TABLE dont_want_dog ADD CONSTRAINT dont_want_dog_id_users_fkey FOREIGN KEY (id_users) REFERENCES users(id);