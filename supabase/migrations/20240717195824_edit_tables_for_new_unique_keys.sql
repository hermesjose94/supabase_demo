alter table "public"."league_season_teams" disable row level security;

CREATE UNIQUE INDEX unique_rounds ON public.rounds USING btree (id_season, name);

CREATE UNIQUE INDEX unique_season_team_league ON public.league_season_teams USING btree (id_team, id_league, id_season);

alter table "public"."league_season_teams" add constraint "unique_season_team_league" UNIQUE using index "unique_season_team_league";

alter table "public"."rounds" add constraint "unique_rounds" UNIQUE using index "unique_rounds";


