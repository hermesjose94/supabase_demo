alter table "public"."players" drop column "number";

alter table "public"."players" add column "firstname" text not null;

alter table "public"."players" add column "lastname" text not null;


