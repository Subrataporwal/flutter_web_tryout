const rootRoute = "/";

const myAppsDisplayName = 'My Apps';
const myAppsPageRoute = '/my-apps';

const appCollectionsDisplayName = 'App Samples';
const appCollectionsPageRoute = '/app-samples';

const resourcesDisplayName = 'Resources';
const resourcePageRoute = '/resources';

const feedbackPageDisplayName = 'Feedback';
const feedbackPageRoute = '/feedback';

const myaccountDisplayName = 'My Account';
const myaccountPageRoute = '/my-account';

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(myAppsDisplayName, myAppsPageRoute),
  MenuItem(appCollectionsDisplayName, appCollectionsPageRoute),
  MenuItem(resourcesDisplayName, resourcePageRoute),
  MenuItem(feedbackPageDisplayName, feedbackPageRoute),
];
