create table "public"."rounds" (
    "id" bigint generated by default as identity not null,
    "id_season" bigint not null,
    "name" text not null,
    "created_at" timestamp with time zone not null default now()
);


alter table "public"."rounds" enable row level security;

CREATE UNIQUE INDEX rounds_pkey ON public.rounds USING btree (id);

alter table "public"."rounds" add constraint "rounds_pkey" PRIMARY KEY using index "rounds_pkey";

alter table "public"."rounds" add constraint "rounds_id_season_fkey" FOREIGN KEY (id_season) REFERENCES seasons(id) ON UPDATE CASCADE ON DELETE CASCADE not valid;

alter table "public"."rounds" validate constraint "rounds_id_season_fkey";

grant delete on table "public"."rounds" to "anon";

grant insert on table "public"."rounds" to "anon";

grant references on table "public"."rounds" to "anon";

grant select on table "public"."rounds" to "anon";

grant trigger on table "public"."rounds" to "anon";

grant truncate on table "public"."rounds" to "anon";

grant update on table "public"."rounds" to "anon";

grant delete on table "public"."rounds" to "authenticated";

grant insert on table "public"."rounds" to "authenticated";

grant references on table "public"."rounds" to "authenticated";

grant select on table "public"."rounds" to "authenticated";

grant trigger on table "public"."rounds" to "authenticated";

grant truncate on table "public"."rounds" to "authenticated";

grant update on table "public"."rounds" to "authenticated";

grant delete on table "public"."rounds" to "service_role";

grant insert on table "public"."rounds" to "service_role";

grant references on table "public"."rounds" to "service_role";

grant select on table "public"."rounds" to "service_role";

grant trigger on table "public"."rounds" to "service_role";

grant truncate on table "public"."rounds" to "service_role";

grant update on table "public"."rounds" to "service_role";


