<script lang="ts">
  import { onMount } from 'svelte';
  import { push } from 'svelte-spa-router';
  
  let isScrolled = false;
  let isMenuOpen = false;
  
  onMount(() => {
    const handleScroll = () => {
      isScrolled = window.scrollY > 20;
    };
    
    window.addEventListener('scroll', handleScroll);
    
    return () => {
      window.removeEventListener('scroll', handleScroll);
    };
  });
  
  const toggleMenu = () => {
    isMenuOpen = !isMenuOpen;
  };
  
  const closeMenu = () => {
    isMenuOpen = false;
  };
  
  const navigate = (path: string) => {
    push(path);
    closeMenu();
  };

  function navigateAndScrollToTop(route: string) {
    push(route);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

</script>

<header class={`fixed w-full z-50 transition-all duration-300 ${isScrolled ? 'bg-white shadow-md py-2' : 'bg-transparent py-4'}`}>
  <div class="container flex justify-between items-center">
    <div class="flex items-center">
      <a href="/" class="flex items-center" on:click|preventDefault={() => navigateAndScrollToTop('/')}>
        <span class="text-primary-600 font-heading text-2xl font-bold">Tech<span class="text-secondary-800">Al</span></span>
      </a>
    </div>
    
    <!-- Desktop Navigation -->
    <nav class="hidden md:flex space-x-8">
      <a href="/" class="text-secondary-800 hover:text-primary-600 font-medium transition-colors" on:click|preventDefault={() => navigateAndScrollToTop('/')}>Home</a>
      <a href="/about" class="text-secondary-800 hover:text-primary-600 font-medium transition-colors" on:click|preventDefault={() => navigateAndScrollToTop('/about')}>About</a>
      <a href="/services" class="text-secondary-800 hover:text-primary-600 font-medium transition-colors" on:click|preventDefault={() => navigateAndScrollToTop('/services')}>Services</a>
      <a href="/contact" class="text-secondary-800 hover:text-primary-600 font-medium transition-colors" on:click|preventDefault={() => navigateAndScrollToTop('/contact')}>Contact</a>
    </nav>
    
    <a href="/contact" on:click={() => navigateAndScrollToTop('/contact')} class="btn btn-primary hidden md:inline-flex">Get Started</a>
    
    <!-- Mobile Menu Button -->
    <button class="md:hidden text-secondary-800" on:click={toggleMenu} aria-label="Toggle menu">
      <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d={isMenuOpen ? "M6 18L18 6M6 6l12 12" : "M4 6h16M4 12h16M4 18h16"} />
      </svg>
    </button>
  </div>
  
  <!-- Mobile Navigation -->
  {#if isMenuOpen}
    <div class="md:hidden absolute top-full left-0 w-full bg-white shadow-lg py-4 px-6 transition-all duration-300 ease-in-out">
      <nav class="flex flex-col space-y-4">
        <a href="/" class="text-secondary-800 hover:text-primary-600 font-medium transition-colors" on:click|preventDefault={() => navigateAndScrollToTop('/')}>Home</a>
        <a href="/about" class="text-secondary-800 hover:text-primary-600 font-medium transition-colors" on:click|preventDefault={() => navigateAndScrollToTop('/about')}>About</a>
        <a href="/services" class="text-secondary-800 hover:text-primary-600 font-medium transition-colors" on:click|preventDefault={() => navigateAndScrollToTop('/services')}>Services</a>
        <a href="/contact" class="text-secondary-800 hover:text-primary-600 font-medium transition-colors" on:click|preventDefault={() => navigateAndScrollToTop('/contact')}>Contact</a>
        <a href="/contact" on:click|preventDefault={() => navigateAndScrollToTop('/contact')} class="btn btn-primary w-full">Get Started</a>
      </nav>
    </div>
  {/if}
  
</header>

<style>
  /* Add any component-specific styles here */
</style>