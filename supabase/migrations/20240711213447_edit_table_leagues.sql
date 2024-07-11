CREATE UNIQUE INDEX leagues_id_api_key ON public.leagues USING btree (id_api);

alter table "public"."leagues" add constraint "leagues_id_api_key" UNIQUE using index "leagues_id_api_key";


