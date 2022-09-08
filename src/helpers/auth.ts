import auth from 'basic-auth';
import { RequestHandler } from 'express';

const { ADMIN_NAME, ADMIN_PASS } = process.env;

export default <RequestHandler>function mdAuth(req, res, next) {
  const user = auth(req);
  if (
    user?.name &&
    user.pass &&
    user.name === ADMIN_NAME &&
    user.pass === ADMIN_PASS
  ) {
    next();
  } else {
    res.status(401).setHeader('WWW-Authenticate', 'Basic realm="foo"');
    res.end('<script>history.back()</script>');
  }
};
