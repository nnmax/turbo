  $ . ${TESTDIR}/../helpers/examples_setup.sh with-npm npm

# run twice and make sure it works
  $ npm run build lint -- --output-logs=errors-only
  
  \> build (re)
  \> turbo run build lint --output-logs=errors-only (re)
  
  \xe2\x80\xa2 Packages in scope: @repo/eslint-config, @repo/typescript-config, @repo/ui, docs, web (esc)
  \xe2\x80\xa2 Running build, lint in 5 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  
   Tasks:    5 successful, 5 total
  Cached:    0 cached, 5 total
    Time:\s*[\.0-9ms]+  (re)
  
  $ npm run build lint -- --output-logs=errors-only
  
  \> build (re)
  \> turbo run build lint --output-logs=errors-only (re)
  
  \xe2\x80\xa2 Packages in scope: @repo/eslint-config, @repo/typescript-config, @repo/ui, docs, web (esc)
  \xe2\x80\xa2 Running build, lint in 5 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  
   Tasks:    5 successful, 5 total
  Cached:    5 cached, 5 total
    Time:\s*[\.0-9ms]+ >>> FULL TURBO (re)
  
  $ git diff
