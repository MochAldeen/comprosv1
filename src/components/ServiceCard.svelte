<script lang="ts">
  import { push } from 'svelte-spa-router';
  export let title: string;
  export let description: string;
  export let icon: string;
  export let link: string = '/services';

  function navigateAndScrollToTop(route: string) {
    push(route);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

</script>

<div class="bg-white rounded-lg shadow-lg p-6 transition-all duration-300 hover:shadow-xl hover:-translate-y-1">
  <div class="w-14 h-14 bg-primary-100 rounded-lg flex items-center justify-center mb-4">
    <div class="text-primary-600">
      {@html icon}
    </div>
  </div>
  
  <h3 class="text-xl font-bold mb-3">{title}</h3>
  <p class="text-secondary-600 mb-4">{description}</p>
  
  <a href={link} on:click|preventDefault={() => navigateAndScrollToTop(link)} class="text-primary-600 font-medium inline-flex items-center hover:text-primary-700 transition-colors">
    Learn more
    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 ml-1" viewBox="0 0 20 20" fill="currentColor">
      <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
    </svg>
  </a>
</div>  