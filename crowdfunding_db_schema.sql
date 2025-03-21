-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/d33jyp
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "CAMPAIGN" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(255)   NOT NULL,
    "description" TEXT   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(50)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(100)   NOT NULL,
    "currency" VARCHAR(10)   NOT NULL,
    "launch_date" TIMESTAMP   NOT NULL,
    "end_date" TIMESTAMP   NOT NULL,
    "category_id" VARCHAR(100)   NOT NULL,
    "subcategory_id" VARCHAR(100)   NOT NULL
);

CREATE TABLE "CATEGORY" (
    "category_id" VARCHAR(100)   NOT NULL,
    "category" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_CATEGORY" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "CONTACTS" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(100)   NOT NULL,
    "last_name" VARCHAR(100)   NOT NULL,
    "email" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_CONTACTS" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "SUBCATEGORY" (
    "subcategory_id" VARCHAR(100)   NOT NULL,
    "subcategory" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_SUBCATEGORY" PRIMARY KEY (
        "subcategory_id","subcategory"
     )
);

ALTER TABLE "CATEGORY" ADD CONSTRAINT "fk_CATEGORY_category_id" FOREIGN KEY("category_id")
REFERENCES "CAMPAIGN" ("category_id");

ALTER TABLE "CONTACTS" ADD CONSTRAINT "fk_CONTACTS_contact_id" FOREIGN KEY("contact_id")
REFERENCES "CAMPAIGN" ("contact_id");

ALTER TABLE "SUBCATEGORY" ADD CONSTRAINT "fk_SUBCATEGORY_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "CAMPAIGN" ("subcategory_id");

-- Verify the table creation by running a SELECT statement for each table.
SELECT * FROM "CONTACTS";
SELECT * FROM "CATEGORY";
SELECT * FROM "SUBCATEGORY";
SELECT * FROM "CAMPAIGN"

-- Verify that each table has the correct data by running a SELECT statement for each.
SELECT * FROM "CONTACTS";
SELECT * FROM "CATEGORY";
SELECT * FROM "SUBCATEGORY";
SELECT * FROM "CAMPAIGN"