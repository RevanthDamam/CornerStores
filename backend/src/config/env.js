import dotenv from "dotenv";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { z } from "zod";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
dotenv.config();
dotenv.config({ path: path.resolve(__dirname, "../../../.env") });
dotenv.config({ path: path.resolve(__dirname, "../../.env") });

const cleanStr = z.string().transform((v) => v.replace(/^["']|["']$/g, "").trim());

export const env = z.object({
  SUPABASE_URL: cleanStr.pipe(z.string().url()).default("https://mutvdndeeipccrremewt.supabase.co"),
  SUPABASE_PUBLISHABLE_KEY: cleanStr.pipe(z.string().min(1)).default("sb_publishable_rTHVT9WJiEBhK3M974kgZw_JWHn9e7A"),
  PORT: z.coerce.number().int().positive().default(4000),
  CORS_ORIGIN: cleanStr.default("https://local-lens-nu.vercel.app,http://localhost:8080"),
  GEOCODER_URL: cleanStr.pipe(z.string().url()).default("https://nominatim.openstreetmap.org"),
}).parse({
  ...process.env,
  SUPABASE_URL: process.env.SUPABASE_URL || process.env.VITE_SUPABASE_URL,
  SUPABASE_PUBLISHABLE_KEY: process.env.SUPABASE_PUBLISHABLE_KEY || process.env.VITE_SUPABASE_PUBLISHABLE_KEY || process.env.VITE_SUPABASE_ANON_KEY,
});


