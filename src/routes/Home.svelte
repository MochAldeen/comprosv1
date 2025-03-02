<script lang="ts">
  import { onMount } from 'svelte';
  import AnimatedSection from '../components/AnimatedSection.svelte';
  import ServiceCard from '../components/ServiceCard.svelte';
  import TestimonialCard from '../components/TestimonialCard.svelte';
  import { push } from 'svelte-spa-router';
  
  function navigateAndScrollToTop(route: string) {
    push(route);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

  let currentSlide = 0;
  let totalSlides = 3;
  
  const services = [
    {
      title: 'Web Development',
      description: 'Custom web applications built with modern technologies for optimal performance.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4" /></svg>'
    },
    {
      title: 'App Development',
      description: 'Native and cross-platform mobile applications for iOS and Android devices.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z" /></svg>'
    },
    {
      title: 'UI/UX Design',
      description: 'User-centered design that enhances user experience and drives engagement.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 21a4 4 0 01-4-4V5a2 2 0 012-2h4a2 2 0 012 2v12a4 4 0 01-4 4zm0 0h12a2 2 0 002-2v-4a2 2 0 00-2-2h-2.343M11 7.343l1.657-1.657a2 2 0 012.828 0l2.829 2.829a2 2 0 010 2.828l-8.486 8.485M7 17h.01" /></svg>'
    },
    { 
      title: 'Digital Marketing',
      description: 'Strategic marketing solutions to increase your online presence and drive growth.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 3.055A9.001 9.001 0 1020.945 13H11V3.055z" /><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z" /></svg>'
    },
    {
      title: 'IT Solution',
      description: 'A service or system that combines software, hardware, and technology to solve business challenges.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" fill="none" viewBox="0 0 24 24" stroke="currentColor"><circle cx="12" cy="12" r="10" stroke="currentColor" stroke-width="2" fill="none" /><circle cx="12" cy="4" r="1" fill="currentColor" /><circle cx="18" cy="12" r="1" fill="currentColor" /><circle cx="12" cy="20" r="1" fill="currentColor" /><circle cx="6" cy="12" r="1" fill="currentColor" /><line x1="12" y1="4" x2="18" y2="12" stroke="currentColor" stroke-width="2" /><line x1="18" y1="12" x2="12" y2="20" stroke="currentColor" stroke-width="2" /><line x1="12" y1="20" x2="6" y2="12" stroke="currentColor" stroke-width="2" /><line x1="6" y1="12" x2="12" y2="4" stroke="currentColor" stroke-width="2" /></svg>'
      }
  ];
  
  const testimonials = [
    {
      name: 'Sarah Johnson',
      position: 'CEO',
      company: 'InnovateTech',
      testimonial: 'TechAl transformed our digital presence completely. Their team delivered a website that not only looks stunning but also performs exceptionally well. The attention to detail and commitment to quality is remarkable.',
      image: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=crop&w=256&q=80'
    },
    {
      name: 'Michael Chen',
      position: 'Marketing Director',
      company: 'GlobalSolutions',
      testimonial: 'Working with TechAl was a game-changer for our business. Their strategic approach to our digital marketing needs resulted in a 200% increase in qualified leads within just three months.',
      image: 'https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&auto=format&fit=crop&w=256&q=80'
    },
    {
      name: 'Emily Rodriguez',
      position: 'Product Manager',
      company: 'FutureTech',
      testimonial: 'The mobile app developed by TechAl exceeded our expectations. User engagement increased by 45% and our customers love the intuitive interface. I highly recommend their services.',
      image: 'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-1.2.1&auto=format&fit=crop&w=256&q=80'
    }
  ];
  
  const stats = [
    { value: '10+', label: 'Years Experience' },
    { value: '200+', label: 'Projects Completed' },
    { value: '50+', label: 'Team Members' },
    { value: '98%', label: 'Client Satisfaction' }
  ];
  
  onMount(() => {
    const interval = setInterval(() => {
      currentSlide = (currentSlide + 1) % totalSlides;
    }, 5000);
    
    return () => clearInterval(interval);
  });
  
  const setSlide = (index: number) => {
    currentSlide = index;
  };
</script>

<!-- Hero Section -->
<section class="relative h-screen flex items-center">
  <div class="absolute inset-0 z-0">
    <div class="relative h-full">
      {#each [0, 1, 2] as index}
        <div 
          class="absolute inset-0 transition-opacity duration-1000 bg-cover bg-center"
          style="background-image: url('https://images.unsplash.com/photo-{index === 0 ? '1497366754079-f007c8c5e66e' : index === 1 ? '1531482615713-2afd69097998' : '1626183884725-bd1e8b784032'}?ixlib=rb-1.2.1&auto=format&fit=crop&w=1920&q=80'); opacity: {currentSlide === index ? 1 : 0};"
        ></div>
      {/each}

      <div class="absolute inset-0 bg-secondary-900 opacity-60"></div>
    </div>
  </div>
  
  <div class="container relative z-10 text-white">
    <div class="max-w-3xl">
      <h1 class="text-4xl md:text-5xl lg:text-6xl font-bold mb-6">Innovative Solutions for Modern Businesses</h1>
      <p class="text-xl md:text-2xl mb-8 text-secondary-100">We help transform your ideas into powerful digital experiences that drive growth and success.</p>
      <div class="flex flex-wrap gap-4">
        <a href="/contact" on:click|preventDefault={() => navigateAndScrollToTop('/contact')} class="btn btn-primary">Get Started</a>
        <a href="/services" on:click|preventDefault={() => navigateAndScrollToTop('/services')} class="btn bg-transparent border-white text-white hover:bg-white hover:text-secondary-900">Our Services</a>
      </div>
    </div>
  </div>
  
  <div class="absolute bottom-8 left-0 right-0 z-10 flex justify-center">
    <div class="flex space-x-2">
      {#each Array(totalSlides) as _, index}
        <button 
          class={`w-3 h-3 rounded-full transition-all duration-300 ${currentSlide === index ? 'bg-white scale-125' : 'bg-white/50'}`}
          on:click={() => setSlide(index)}
          aria-label={`Go to slide ${index + 1}`}
        ></button>
      {/each}
    </div>
  </div>
</section>

<!-- Services Section -->
<section class="section bg-secondary-50">
  <div class="container">
    <AnimatedSection>
      <div class="text-center max-w-3xl mx-auto mb-16">
        <h2 class="text-3xl md:text-4xl font-bold mb-4">Our Services</h2>
        <p class="text-secondary-600">We offer a comprehensive range of digital services to help your business thrive in the digital landscape.</p>
      </div>
    </AnimatedSection>
    
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
      {#each services as service, i}
        <AnimatedSection delay={i * 200}>
          <ServiceCard 
            title={service.title} 
            description={service.description} 
            icon={service.icon} 
          />
        </AnimatedSection>
      {/each}
      
    </div>
  </div>
</section>

<!-- About Section -->
<section class="section">
  <div class="container">
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
      <AnimatedSection animation="slide-in">
        <div class="relative">
          <img 
            src="https://images.unsplash.com/photo-1522071820081-009f0129c71c?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80" 
            alt="Team collaboration" 
            class="rounded-lg shadow-xl w-full"
          />
          <div class="absolute -bottom-6 -right-6 bg-primary-600 rounded-lg p-6 shadow-lg hidden md:block">
            <div class="text-white text-center">
              <span class="block text-3xl font-bold">10+</span>
              <span class="text-sm">Years of Experience</span>
            </div>
          </div>
        </div>
      </AnimatedSection>
      
      <AnimatedSection animation="fade-in" delay={300}>
        <div>
          <h2 class="text-3xl md:text-4xl font-bold mb-6">We Help Businesses Grow and Succeed</h2>
          <p class="text-secondary-600 mb-6">TechAl is a leading digital agency specializing in creating innovative solutions that drive business growth. With over a decade of experience, we've helped hundreds of companies transform their digital presence.</p>
          
          <div class="mb-8">
            <div class="flex items-center mb-4">
              <div class="w-6 h-6 rounded-full bg-primary-100 flex items-center justify-center mr-3">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 text-primary-600" viewBox="0 0 20 20" fill="currentColor">
                  <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                </svg>
              </div>
              <span class="text-secondary-800">Expert team of designers and developers</span>
            </div>
            <div class="flex items-center mb-4">
              <div class="w-6 h-6 rounded-full bg-primary-100 flex items-center justify-center mr-3">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 text-primary-600" viewBox="0 0 20 20" fill="currentColor">
                  <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                </svg>
              </div>
              <span class="text-secondary-800">Tailored solutions for your specific needs</span>
            </div>
            <div class="flex items-center">
              <div class="w-6 h-6 rounded-full bg-primary-100 flex items-center justify-center mr-3">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 text-primary-600" viewBox="0 0 20 20" fill="currentColor">
                  <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                </svg>
              </div>
              <span class="text-secondary-800">Proven track record of successful projects</span>
            </div>
          </div>  
          <a href="/contact" on:click|preventDefault={() => navigateAndScrollToTop('/about')} class="btn btn-primary">Learn More About Us</a>
        </div>
      </AnimatedSection>
    </div>
  </div>
</section>

<!-- Stats Section -->
<section class="py-16 bg-primary-600">
  <div class="container">
    <div class="grid grid-cols-2 md:grid-cols-4 gap-8">
      {#each stats as stat, i}
        <AnimatedSection delay={i * 150}>
          <div class="text-center text-white">
            <div class="text-4xl md:text-5xl font-bold mb-2">{stat.value}</div>
            <div class="text-primary-100">{stat.label}</div>
          </div>
        </AnimatedSection>
      {/each}
      
    </div>
  </div>
</section>

<!-- Testimonials Section -->
<section class="section bg-secondary-50">
  <div class="container">
    <AnimatedSection>
      <div class="text-center max-w-3xl mx-auto mb-16">
        <h2 class="text-3xl md:text-4xl font-bold mb-4">What Our Clients Say</h2>
        <p class="text-secondary-600">Don't just take our word for it. Here's what our clients have to say about working with us.</p>
      </div>
    </AnimatedSection>
    
    <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mt-12">
      {#each testimonials as testimonial, i}
        <AnimatedSection delay={i * 200}>
          <TestimonialCard 
            name={testimonial.name} 
            position={testimonial.position} 
            company={testimonial.company} 
            testimonial={testimonial.testimonial} 
            image={testimonial.image} 
          />
        </AnimatedSection>
      {/each}
      
    </div>
  </div>
</section>

<!-- CTA Section -->
<section class="section bg-secondary-900 text-white">
  <div class="container">
    <div class="max-w-4xl mx-auto text-center">
      <AnimatedSection>
        <h2 class="text-3xl md:text-4xl font-bold mb-6">Ready to Transform Your Business?</h2>
        <p class="text-xl text-secondary-300 mb-8">Let's work together to create digital solutions that drive growth and success for your business.</p>
        <a href="/contact" on:click|preventDefault={() => navigateAndScrollToTop('/contact')} class="btn btn-primary text-lg px-8 py-4">Get Started Today</a>
      </AnimatedSection>
    </div>
  </div>
</section>