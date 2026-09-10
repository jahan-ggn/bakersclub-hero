import Component from "@glimmer/component";
import { service } from "@ember/service";
import SearchMenu from "discourse/components/search-menu";
import { defaultHomepage } from "discourse/lib/utilities";

export default class BakersClubHero extends Component {
  @service router;

  get shouldShow() {
    return this.router.currentRouteName === `discovery.${defaultHomepage()}`;
  }

  <template>
    {{#if this.shouldShow}}
      <section class="bakersclub-hero">
        <img
          class="bakersclub-hero__image"
          src={{settings.hero_image}}
          alt=""
        />

        <div class="bakersclub-hero__search">
          <SearchMenu />
        </div>
      </section>
    {{/if}}
  </template>
}
