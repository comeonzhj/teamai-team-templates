#!/usr/bin/env node
// Deploy this team's hook guard scripts into ~/.teamai/team-scripts/.
//
// Declared as `scripts.postPull` in teamai.yaml, so it runs automatically after
// every successful `teamai pull`. Hook commands in hooks/hooks.yaml point at
// ~/.teamai/team-scripts/<name>.sh, which is the trust boundary `sharing.hooks.
// requireTeamScripts` enforces: a hook command outside that directory is dropped.
//
// Output is English and failures never fail a pull (teamai logs them).

import { chmod, copyFile, mkdir, readdir } from 'node:fs/promises';
import { existsSync } from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const here = path.dirname(fileURLToPath(import.meta.url));
const sourceDir = path.join(here, 'hooks');
const targetDir = path.join(os.homedir(), '.teamai', 'team-scripts');

try {
  if (!existsSync(sourceDir)) {
    console.log('team-scripts: no scripts/hooks directory in the team repo, nothing deployed');
    process.exit(0);
  }
  await mkdir(targetDir, { recursive: true });
  const files = (await readdir(sourceDir)).filter((file) => file.endsWith('.sh')).sort();
  for (const file of files) {
    const target = path.join(targetDir, file);
    await copyFile(path.join(sourceDir, file), target);
    await chmod(target, 0o755);
  }
  console.log(`team-scripts: deployed ${files.length} script(s) to ${targetDir}`);
} catch (error) {
  console.error(`team-scripts: deploy failed: ${error?.message ?? error}`);
}
