CREATE TABLE "CONTACTS" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(100)   NOT NULL,
    "last_name" VARCHAR(100)   NOT NULL,
    "email" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_CONTACTS" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "CATEGORY" (
    "category_id" INT,
    "category" VARCHAR(100),
    CONSTRAINT "pk_CATEGORY" PRIMARY KEY (
        "category_id","category"
     )
);

CREATE TABLE "SUBCATEGORY" (
    "subcategory_id" INT,
    "subcategory" VARCHAR(100),
    CONSTRAINT "pk_SUBCATEGORY" PRIMARY KEY (
        "subcategory_id","subcategory"
     )
);

CREATE TABLE "CAMPAIGN" (
    "cf_id" INT,
    "contact_id" INT,
    "company_name" VARCHAR(255),
    "description" TEXT,
    "goal" DECIMAL FLOAT,
    "pledged" DECIMAL FLOAT,
    "outcome" VARCHAR(50),
    "backers_count" INT,
    "country" VARCHAR(100),
    "currency" VARCHAR(10),
    "launch_date" DATETIME,
    "end_date" DATETIME,
    "staff_pick" BOOLEAN,
    "spotlight" BOOLEAN,
    "category" VARCHAR(100),
    "subcategory" VARCHAR(100),
    "category_id" INT,
    "subcategory_id" INT
);

ALTER TABLE "CAMPAIGN" ADD CONSTRAINT "fk_CAMPAIGN_contact_id" FOREIGN KEY("contact_id")
REFERENCES "CONTACTS" ("contact_id");

ALTER TABLE "CAMPAIGN" ADD CONSTRAINT "fk_CAMPAIGN_category_category_id" FOREIGN KEY("category", "category_id")
REFERENCES "CATEGORY" ("category", "category_id");

ALTER TABLE "CAMPAIGN" ADD CONSTRAINT "fk_CAMPAIGN_subcategory_subcategory_id" FOREIGN KEY("subcategory", "subcategory_id")
REFERENCES "SUBCATEGORY" ("subcategory", "subcategory_id");

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
