import dotenv from "dotenv";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { z } from "zod";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
dotenv.config();
dotenv.config({ path: path.resolve(__dirname, "../../../.env") });
dotenv.config({ path: path.resolve(__dirname, "../../.env") });

const clean = (val) => (typeof val === "string" ? val.replace(/^["']|["']$/g, "").trim() : val);
const rawUrl = clean(process.env.SUPABASE_URL || process.env.VITE_SUPABASE_URL);
const rawKey = clean(process.env.SUPABASE_PUBLISHABLE_KEY || process.env.VITE_SUPABASE_PUBLISHABLE_KEY || process.env.VITE_SUPABASE_ANON_KEY);

const environmentSchema = z.object({
  SUPABASE_URL: z.string().url("SUPABASE_URL must be a URL").default("https://mutvdndeeipccrremewt.supabase.co"),
  SUPABASE_PUBLISHABLE_KEY: z.string().min(1, "SUPABASE_PUBLISHABLE_KEY is required").default("sb_publishable_rTHVT9WJiEBhK3M974kgZw_JWHn9e7A"),
  PORT: z.coerce.number().int().positive().default(4000),
  CORS_ORIGIN: z.string().default("https://local-lens-nu.vercel.app,http://localhost:8080"),
  GEOCODER_URL: z.string().url("GEOCODER_URL must be a URL").default("https://nominatim.openstreetmap.org"),
});

export const env = environmentSchema.parse({
  ...process.env,
  ...(rawUrl ? { SUPABASE_URL: rawUrl } : {}),
  ...(rawKey ? { SUPABASE_PUBLISHABLE_KEY: rawKey } : {}),
});


