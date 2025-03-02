<script lang="ts">
  import { push } from 'svelte-spa-router';
  
  const goHome = () => {
    push('/');
  };
</script>

<section class="min-h-screen flex items-center justify-center bg-secondary-50 px-4">
  <div class="text-center">
    <h1 class="text-9xl font-bold text-primary-600 mb-4">404</h1>
    <h2 class="text-3xl md:text-4xl font-bold mb-6">Page Not Found</h2>
    <p class="text-xl text-secondary-600 mb-8 max-w-md mx-auto">The page you are looking for might have been removed, had its name changed, or is temporarily unavailable.</p>
    <button on:click={goHome} class="btn btn-primary">
      <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-2" viewBox="0 0 20 20" fill="currentColor">
        <path fill-rule="evenodd" d="M9.707 14.707a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 1.414L7.414 9H15a1 1 0 110 2H7.414l2.293 2.293a1 1 0 010 1.414z" clip-rule="evenodd" />
      </svg>
      Back to Home
    </button>
  </div>
</section>