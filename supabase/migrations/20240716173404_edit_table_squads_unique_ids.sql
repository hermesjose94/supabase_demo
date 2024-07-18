alter table "public"."countries" disable row level security;

alter table "public"."fixture_player_statistics" disable row level security;

alter table "public"."fixtures" disable row level security;

alter table "public"."leagues" disable row level security;

alter table "public"."players" disable row level security;

alter table "public"."rounds" disable row level security;

alter table "public"."seasons" disable row level security;

alter table "public"."squads" disable row level security;

alter table "public"."teams" disable row level security;

CREATE UNIQUE INDEX idx_unique_season_team_player ON public.squads USING btree (id_season, id_team, id_player);

CREATE UNIQUE INDEX unique_season_team_player ON public.squads USING btree (id_season, id_team, id_player);

alter table "public"."squads" add constraint "unique_season_team_player" UNIQUE using index "unique_season_team_player";


