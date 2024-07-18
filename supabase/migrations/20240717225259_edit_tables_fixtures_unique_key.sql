CREATE UNIQUE INDEX fixtures_id_api_key ON public.fixtures USING btree (id_api);

alter table "public"."fixtures" add constraint "fixtures_id_api_key" UNIQUE using index "fixtures_id_api_key";


