import Component from "@glimmer/component";
import { service } from "@ember/service";
import SearchMenu from "discourse/components/search-menu";
import { defaultHomepage } from "discourse/lib/utilities";
import { and } from "discourse/truth-helpers";

export default class BakersClubHero extends Component {
  @service router;

  get shouldShow() {
    return this.router.currentRouteName === `discovery.${defaultHomepage()}`;
  }

  <template>
    {{#if (and this.shouldShow settings.hero_image)}}
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
