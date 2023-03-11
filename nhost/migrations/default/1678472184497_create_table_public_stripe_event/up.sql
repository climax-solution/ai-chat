CREATE TABLE "public"."stripe_event" ("id" text NOT NULL, "user_id" uuid NOT NULL, "object" text, "api_version" text, "created" int8, "livemode" boolean, "pending_webhooks" integer, "request" jsonb, "type" text, "data" jsonb, PRIMARY KEY ("id") , FOREIGN KEY ("user_id") REFERENCES "auth"."users"("id") ON UPDATE cascade ON DELETE cascade);