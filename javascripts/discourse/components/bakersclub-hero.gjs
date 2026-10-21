import Component from "@glimmer/component";
import { service } from "@ember/service";
import SearchMenu from "discourse/components/search-menu";
import { defaultHomepage } from "discourse/lib/utilities";
import { and } from "discourse/truth-helpers";
import dIcon from "discourse/ui-kit/helpers/d-icon";

export default class BakersClubHero extends Component {
  @service router;

  get shouldShow() {
    return this.router.currentRouteName === `discovery.${defaultHomepage()}`;
  }

  <template>
    {{#if (and this.shouldShow settings.hero_image)}}
      <section class="bakersclub-hero">
        <img
          alt=""
          class="bakersclub-hero__image"
          src={{settings.hero_image}}
        />

        {{#if settings.hero_overlay_image}}
          <img
            alt=""
            class="bakersclub-hero__overlay-image"
            src={{settings.hero_overlay_image}}
          />
        {{/if}}

        <div class="bakersclub-hero__content">
          {{#if settings.hero_content}}
            <div class="bakersclub-hero__text">
              {{settings.hero_content}}
            </div>
          {{/if}}

          <div class="bakersclub-hero__search">
            <span aria-hidden="true" class="bakersclub-hero__search-icon">
              {{dIcon "magnifying-glass"}}
            </span>

            <SearchMenu />
          </div>
        </div>
      </section>
    {{/if}}
  </template>
}
