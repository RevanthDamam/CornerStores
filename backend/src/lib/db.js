import pg from "pg";
import { env } from "../config/env.js";

const { Pool } = pg;

export const pool = env.DATABASE_URL
  ? new Pool({ connectionString: env.DATABASE_URL })
  : null;
