import { acceptance } from "helpers/qunit-helpers";

acceptance("Queued Posts", { loggedIn: true });

test("list posts needing approval", () => {
  visit("/queued-posts");

  andThen(() => {
    ok(exists('.queued-post'), 'it has posts listed');
  });
});

