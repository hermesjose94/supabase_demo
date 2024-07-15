alter table "public"."countries" drop constraint "countries_id_api_key";

drop index if exists "public"."countries_id_api_key";

alter table "public"."countries" drop column "id_api";

alter table "public"."countries" alter column "code" drop not null;

alter table "public"."countries" alter column "flag" drop not null;

CREATE UNIQUE INDEX countries_name_key ON public.countries USING btree (name);

alter table "public"."countries" add constraint "countries_name_key" UNIQUE using index "countries_name_key";


