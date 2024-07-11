create table "public"."players" (
    "id" bigint generated by default as identity not null,
    "id_api" bigint not null,
    "id_country" bigint not null,
    "name" text not null,
    "age" bigint not null,
    "number" bigint not null,
    "position" bigint not null,
    "photo" text not null,
    "created_at" timestamp with time zone not null default now()
);


alter table "public"."players" enable row level security;

CREATE UNIQUE INDEX players_id_api_key ON public.players USING btree (id_api);

CREATE UNIQUE INDEX players_pkey ON public.players USING btree (id);

alter table "public"."players" add constraint "players_pkey" PRIMARY KEY using index "players_pkey";

alter table "public"."players" add constraint "players_id_api_key" UNIQUE using index "players_id_api_key";

alter table "public"."players" add constraint "players_id_country_fkey" FOREIGN KEY (id_country) REFERENCES countries(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."players" validate constraint "players_id_country_fkey";

grant delete on table "public"."players" to "anon";

grant insert on table "public"."players" to "anon";

grant references on table "public"."players" to "anon";

grant select on table "public"."players" to "anon";

grant trigger on table "public"."players" to "anon";

grant truncate on table "public"."players" to "anon";

grant update on table "public"."players" to "anon";

grant delete on table "public"."players" to "authenticated";

grant insert on table "public"."players" to "authenticated";

grant references on table "public"."players" to "authenticated";

grant select on table "public"."players" to "authenticated";

grant trigger on table "public"."players" to "authenticated";

grant truncate on table "public"."players" to "authenticated";

grant update on table "public"."players" to "authenticated";

grant delete on table "public"."players" to "service_role";

grant insert on table "public"."players" to "service_role";

grant references on table "public"."players" to "service_role";

grant select on table "public"."players" to "service_role";

grant trigger on table "public"."players" to "service_role";

grant truncate on table "public"."players" to "service_role";

grant update on table "public"."players" to "service_role";


