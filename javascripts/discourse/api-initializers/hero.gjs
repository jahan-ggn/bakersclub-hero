import { apiInitializer } from "discourse/lib/api";
import BakersClubHero from "../components/bakersclub-hero";

export default apiInitializer((api) => {
  api.renderInOutlet("above-main-container", BakersClubHero);
});
