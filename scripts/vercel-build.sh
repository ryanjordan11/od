#!/bin/bash
set -e
pnpm --filter @open-design/web build
node -e "const fs=require('fs');fs.mkdirSync('out',{recursive:true});fs.cpSync('apps/web/out','out',{recursive:true,dereference:true})"
