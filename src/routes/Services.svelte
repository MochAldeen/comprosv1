<script lang="ts">
  import AnimatedSection from '../components/AnimatedSection.svelte';
  import ServiceCard from '../components/ServiceCard.svelte';
  import { push } from 'svelte-spa-router';

  function navigateAndScrollToTop(route: string) {
    push(route);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

  const mainServices = [
    {
      title: 'Web Development',
      description: 'Custom websites and web applications built with modern technologies for optimal performance and user experience.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4" /></svg>',
      features: [
        'Responsive website design',
        'E-commerce solutions',
        'Content management systems',
        'Progressive web applications',
        'API development and integration',
        'Performance optimization'
      ]
    },
    {
      title: 'Mobile App Development',
      description: 'Native and cross-platform mobile applications for iOS and Android devices that engage users and drive business growth.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z" /></svg>',
      features: [
        'iOS app development',
        'Android app development',
        'Cross-platform solutions',
        'App store optimization',
        'Mobile app testing',
        'Ongoing maintenance and support'
      ]
    },
    {
      title: 'UI/UX Design',
      description: 'User-centered design that enhances user experience, increases engagement, and drives conversions.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 21a4 4 0 01-4-4V5a2 2 0 012-2h4a2 2 0 012 2v12a4 4 0 01-4 4zm0 0h12a2 2 0 002-2v-4a2 2 0 00-2-2h-2.343M11 7.343l1.657-1.657a2 2 0 012.828 0l2.829 2.829a2 2 0 010 2.828l-8.486 8.485M7 17h.01" /></svg>',
      features: [
        'User research and testing',
        'Wireframing and prototyping',
        'Visual design',
        'Interaction design',
        'Usability testing',
        'Design systems'
      ]
    },
    {
      title: 'Digital Marketing',
      description: 'Strategic marketing solutions to increase your online presence, drive traffic, and generate leads.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 3.055A9.001 9.001 0 1020.945 13H11V3.055z" /><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z" /></svg>',
      features: [
        'Search engine optimization (SEO)',
        'Pay-per-click advertising (PPC)',
        'Social media marketing',
        'Content marketing',
        'Email marketing',
        'Analytics and reporting'
      ]
    },
    {
      title: 'IT Solution',
      description: 'A service or system that combines software, hardware, and technology to solve business challenges.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" fill="none" viewBox="0 0 24 24" stroke="currentColor"><circle cx="12" cy="12" r="10" stroke="currentColor" stroke-width="2" fill="none" /><circle cx="12" cy="4" r="1" fill="currentColor" /><circle cx="18" cy="12" r="1" fill="currentColor" /><circle cx="12" cy="20" r="1" fill="currentColor" /><circle cx="6" cy="12" r="1" fill="currentColor" /><line x1="12" y1="4" x2="18" y2="12" stroke="currentColor" stroke-width="2" /><line x1="18" y1="12" x2="12" y2="20" stroke="currentColor" stroke-width="2" /><line x1="12" y1="20" x2="6" y2="12" stroke="currentColor" stroke-width="2" /><line x1="6" y1="12" x2="12" y2="4" stroke="currentColor" stroke-width="2" /></svg>',
      features: [
        'Automation',
        'Scalability',
        'Security',
        'Cloud Integration',
        'Analytics and Reporting',
        'User-friendly Interface'
      ]
    }
  ];
  
  const additionalServices = [
    {
      title: 'E-commerce Solutions',
      description: 'Custom online stores boosting sales and customer satisfaction.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 11V7a4 4 0 00-8 0v4M5 9h14l1 12H4L5 9z" /></svg>'
    },
    {
      title: 'Cloud Solutions',
      description: 'Scalable and secure cloud infrastructure and services for your business needs.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 15a4 4 0 004 4h9a5 5 0 10-.1-9.999 5.002 5.002 0 10-9.78 2.096A4.001 4.001 0 003 15z" /></svg>'
    },
    {
      title: 'IT Consulting',
      description: 'Expert advice and guidance on technology strategy and implementation.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z" /></svg>'
    }
  ];
  
  const process = [
    {
      title: 'Discovery',
      description: 'We start by understanding your business, goals, and requirements through in-depth discussions and research.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" /></svg>'
    },
    {
      title: 'Planning',
      description: 'We create a detailed project plan, including timelines, milestones, and deliverables to ensure a smooth process.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01" /></svg>'
    },
    {
      title: 'Design',
      description: 'Our designers create wireframes and visual designs that align with your brand and meet user needs.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" /></svg>'
    },
    {
      title: 'Development',
      description: 'Our developers bring the designs to life, writing clean, efficient code that meets the project requirements.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4" /></svg>'
    },
    {
      title: 'Testing',
      description: 'We thoroughly test all aspects of the project to ensure quality, performance, and security.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" /></svg>'
    },
    {
      title: 'Launch',
      description: 'We deploy your project and provide training and support to ensure a successful launch.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 3v4M3 5h4M6 17v4m-2-2h4m5-16l2.286 6.857L21 12l-5.714 2.143L13 21l-2.286-6.857L5 12l5.714-2.143L13 3z" /></svg>'
    }
  ];
</script>

<!-- Hero Section -->
<section class="pt-32 pb-20 bg-secondary-900 text-white">
  <div class="container">
    <div class="max-w-3xl">
      <h1 class="text-4xl md:text-5xl font-bold mb-6">Our Services</h1>
      <p class="text-xl text-secondary-200">Comprehensive digital solutions tailored to your business needs.</p>
    </div>
  </div>
</section>

<!-- Main Services Section -->
<section class="section">
  <div class="container">
    <AnimatedSection>
      <div class="text-center max-w-3xl mx-auto mb-16">
        <h2 class="text-3xl md:text-4xl font-bold mb-4">What We Offer</h2>
        <p class="text-secondary-600">We provide a wide range of digital services to help your business thrive in the digital landscape.</p>
      </div>
    </AnimatedSection>
    
    {#each mainServices as service, i}
      <AnimatedSection delay={i * 200}>
        <div class="mb-16 last:mb-0">
          <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
            <div class={i % 2 === 1 ? 'lg:order-last' : ''}>
              <div class="w-16 h-16 bg-primary-100 rounded-lg flex items-center justify-center mb-6">
                <div class="text-primary-600">
                  {@html service.icon}
                </div>
              </div>
              <h3 class="text-2xl md:text-3xl font-bold mb-4">{service.title}</h3>
              <p class="text-secondary-600 mb-6">{service.description}</p>
              
              <ul class="grid grid-cols-1 md:grid-cols-2 gap-x-6 gap-y-3 mb-6">
                {#each service.features as feature}
                  <li class="flex items-start">
                    <div class="flex-shrink-0 w-5 h-5 rounded-full bg-primary-100 flex items-center justify-center mt-1 mr-3">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-3 w-3 text-primary-600" viewBox="0 0 20 20" fill="currentColor">
                        <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
                      </svg>
                    </div>
                    <span class="text-secondary-700">{feature}</span>
                  </li>
                {/each}
                
              </ul>
              
              <a href="/contact" on:click|preventDefault={() => navigateAndScrollToTop('/contact')} class="btn btn-primary">Learn More</a>
            </div>
            
            <div>
              <img 
                src={`https://images.unsplash.com/photo-${i === 0 ? '1460925895917-afdab827c52f' : i === 1 ? '1512941937669-90a1b58e7e9c' : i === 2 ? '1586717791821-3f44a563fa4c' : i === 3 ? '1552664730-d307ca884978' : '1531482615713-2afd69097998'}`}
                alt={service.title}
                class="rounded-lg shadow-xl w-full"
              />
            </div>
          </div>
        </div>
      </AnimatedSection>
    {/each}
    
  </div>
</section>

<!-- Additional Services Section -->
<section class="section bg-secondary-50">
  <div class="container">
    <AnimatedSection>
      <div class="text-center max-w-3xl mx-auto mb-16">
        <h2 class="text-3xl md:text-4xl font-bold mb-4">Additional Services</h2>
        <p class="text-secondary-600">Beyond our core offerings, we provide specialized services to meet your specific needs.</p>
      </div>
    </AnimatedSection>
    
    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
      {#each additionalServices as service, i}
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

<!-- Process Section -->
<section class="section">
  <div class="container">
    <AnimatedSection>
      <div class="text-center max-w-3xl mx-auto mb-16">
        <h2 class="text-3xl md:text-4xl font-bold mb-4">Our Process</h2>
        <p class="text-secondary-600">We follow a structured approach to ensure the success of your project.</p>
      </div>
    </AnimatedSection>
    
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
      {#each process as step, i}
        <AnimatedSection delay={i * 150}>
          <div class="bg-white rounded-lg shadow-lg p-6 h-full">
            <div class="flex items-center mb-4">
              <div class="w-12 h-12 bg-primary-100 rounded-full flex items-center justify-center mr-4">
                <div class="text-primary-600">
                  {@html step.icon}
                </div>
              </div>
              <span class="text-4xl font-bold text-secondary-300">{i + 1}</span>
            </div>
            <h3 class="text-xl font-bold mb-3">{step.title}</h3>
            <p class="text-secondary-600">{step.description}</p>
          </div>
        </AnimatedSection>
      {/each}  
    </div>
  </div>
</section>

<!-- Technologies Section -->
<section class="section bg-secondary-900 text-white">
  <div class="container">
    <AnimatedSection>
      <div class="text-center max-w-3xl mx-auto mb-16">
        <h2 class="text-3xl md:text-4xl font-bold mb-4">Technologies We Use</h2>
        <p class="text-secondary-300">We leverage the latest technologies to deliver high-quality solutions.</p>
      </div>
    </AnimatedSection>
    
    <div class="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-8">
      {#each ['React', 'Angular', 'Vue.js', 'Node.js', 'Python', 'PHP', 'Laravel', 'WordPress', 'Shopify', 'AWS', 'Google Cloud', 'Azure'] as tech, i}
        <AnimatedSection delay={i * 100}>
          <div class="bg-secondary-800 rounded-lg p-4 text-center">
            <p class="font-medium text-white">{tech}</p>
          </div>
        </AnimatedSection>
      {/each}
      
    </div>
  </div>
</section>

<!-- CTA Section -->
<section class="section">
  <div class="container">
    <div class="bg-primary-600 rounded-xl p-8 md:p-12 text-white">
      <div class="grid grid-cols-1 lg:grid-cols-5 gap-8 items-center">
        <div class="lg:col-span-3">
          <h2 class="text-3xl font-bold mb-4">Ready to Start Your Project?</h2>
          <p class="text-primary-100 text-lg mb-6 lg:mb-0">Contact us today to discuss your project requirements and how we can help you achieve your goals.</p>
        </div>
        <div class="lg:col-span-2 flex flex-col sm:flex-row gap-4">
          <a href="/contact" on:click|preventDefault={() => navigateAndScrollToTop('/contact')} class="btn bg-white text-primary-700 hover:bg-primary-50 text-center flex-1">Contact Us</a>
          <a href="/about" on:click|preventDefault={() => navigateAndScrollToTop('/about')} class="btn bg-transparent border border-white text-white hover:bg-white/10 text-center flex-1">Learn More</a>
        </div>
      </div>
    </div>
  </div>
</section>