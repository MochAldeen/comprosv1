<script lang="ts">
  import { onMount } from 'svelte';
  
  export let animation: 'fade-in' | 'slide-up' | 'slide-in' = 'fade-in';
  export let delay: number = 0;
  export let threshold: number = 0.1;
  
  let element: HTMLElement;
  let isVisible = false;
  
  onMount(() => {
    const observer = new IntersectionObserver(
      (entries) => {
        entries.forEach(entry => {
          if (entry.isIntersecting) {
            setTimeout(() => {
              isVisible = true;
            }, delay);
            observer.unobserve(element);
          }
        });
      },
      { threshold }
    );
    
    observer.observe(element);
    
    return () => {
      observer.disconnect();
    };
  });
  
  const getAnimationClass = () => {
    switch (animation) {
      case 'fade-in':
        return 'opacity-0 transition-opacity duration-1000 ease-out';
      case 'slide-up':
        return 'opacity-0 translate-y-10 transition-all duration-1000 ease-out';
      case 'slide-in':
        return 'opacity-0 -translate-x-10 transition-all duration-1000 ease-out';
      default:
        return '';
    }
  };
  
  const getVisibleClass = () => {
    switch (animation) {
      case 'fade-in':
        return 'opacity-100';
      case 'slide-up':
        return 'opacity-100 translate-y-0';
      case 'slide-in':
        return 'opacity-100 translate-x-0';
      default:
        return '';
    }
  };
</script>

<div 
  bind:this={element} 
  class={`${getAnimationClass()} ${isVisible ? getVisibleClass() : ''}`}
>
  <slot />
</div>