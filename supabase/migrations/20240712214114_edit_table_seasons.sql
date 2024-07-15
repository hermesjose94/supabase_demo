CREATE UNIQUE INDEX seasons_unique_constraint ON public.seasons USING btree (id_league, year);

alter table "public"."seasons" add constraint "seasons_unique_constraint" UNIQUE using index "seasons_unique_constraint";


