const rootRoute = "/";

const OverViewPageDisplay = "Overview";
const overViewPageRoute = "/overview";

const DriversPageDisplay = "Drivers";
const driversPageRoute = "/drivers";

const ClientsPageDisplay = "Clients";
const clientsPageRoute = "/clients";

const AuthenticationPageDisplay = "Log Out";
const authenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(OverViewPageDisplay, overViewPageRoute),
  MenuItem(DriversPageDisplay, driversPageRoute),
  MenuItem(ClientsPageDisplay, clientsPageRoute),
  MenuItem(AuthenticationPageDisplay, authenticationPageRoute),
];
