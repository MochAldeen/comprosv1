<script lang="ts">
  import AnimatedSection from '../components/AnimatedSection.svelte';
  import TeamMember from '../components/TeamMember.svelte';
  
  const teamMembers = [
    {
      name: 'Alex Johnson',
      position: 'CEO & Founder',
      image: 'https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      socialLinks: [
        { platform: 'twitter', url: '#' },
        { platform: 'linkedin', url: '#' }
      ]
    },
    {
      name: 'Samantha Lee',
      position: 'Creative Director',
      image: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      socialLinks: [
        { platform: 'twitter', url: '#' },
        { platform: 'linkedin', url: '#' }
      ]
    },
    {
      name: 'David Chen',
      position: 'Lead Developer',
      image: 'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      socialLinks: [
        { platform: 'github', url: '#' },
        { platform: 'linkedin', url: '#' }
      ]
    },
    {
      name: 'Maria Rodriguez',
      position: 'UX Designer',
      image: 'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      socialLinks: [
        { platform: 'twitter', url: '#' },
        { platform: 'linkedin', url: '#' }
      ]
    }
  ];
  
  const values = [
    {
      title: 'Innovation',
      description: 'We constantly push boundaries and explore new technologies to deliver cutting-edge solutions.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.663 17h4.673M12 3v1m6.364 1.636l-.707.707M21 12h-1M4 12H3m3.343-5.657l-.707-.707m2.828 9.9a5 5 0 117.072 0l-.548.547A3.374 3.374 0 0014 18.469V19a2 2 0 11-4 0v-.531c0-.895-.356-1.754-.988-2.386l-.548-.547z" /></svg>'
    },
    {
      title: 'Excellence',
      description: 'We are committed to delivering the highest quality in everything we do, exceeding expectations.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z" /></svg>'
    },
    {
      title: 'Collaboration',
      description: 'We believe in the power of teamwork and partnership, working closely with our clients for success.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" /></svg>'
    },
    {
      title: 'Integrity',
      description: 'We operate with honesty, transparency, and ethical standards in all our business practices.',
      icon: '<svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z" /></svg>'
    }
  ];
  
  const timeline = [
    {
      year: '2015',
      title: 'Company Founded',
      description: 'TechAl was founded with a vision to create innovative digital solutions for businesses of all sizes.'
    },
    {
      year: '2017',
      title: 'Expansion',
      description: 'Expanded our team and services to include mobile app development and digital marketing.'
    },
    {
      year: '2019',
      title: 'International Growth',
      description: 'Opened our first international office and began serving clients globally.'
    },
    {
      year: '2021',
      title: 'Industry Recognition',
      description: 'Received multiple industry awards for our innovative approach and client success stories.'
    },
    {
      year: '2023',
      title: 'Strategic Partnerships',
      description: 'Formed strategic partnerships with leading technology providers to enhance our service offerings.'
    }
  ];
</script>

<!-- Hero Section -->
<section class="pt-32 pb-20 bg-secondary-900 text-white">
  <div class="container">
    <div class="max-w-3xl">
      <h1 class="text-4xl md:text-5xl font-bold mb-6">About TechAl</h1>
      <p class="text-xl text-secondary-200">We're a team of passionate digital experts committed to transforming businesses through innovative technology solutions.</p>
    </div>
  </div>
</section>

<!-- Our Story Section -->
<section class="section">
  <div class="container">
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
      <AnimatedSection animation="slide-in">
        <img 
          src="https://images.unsplash.com/photo-1552664730-d307ca884978?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80" 
          alt="Our story" 
          class="rounded-lg shadow-xl w-full"
        />
      </AnimatedSection>
      
      <AnimatedSection animation="fade-in" delay={300}>
        <div>
          <h2 class="text-3xl font-bold mb-6">Our Story</h2>
          <p class="text-secondary-600 mb-4">Founded in 2015, TechAl began with a simple mission: to help businesses leverage technology to grow and succeed in an increasingly digital world.</p>
          <p class="text-secondary-600 mb-4">What started as a small team of passionate developers has grown into a full-service digital agency with expertise across web development, mobile applications, UI/UX design, and digital marketing.</p>
          <p class="text-secondary-600 mb-6">Today, we're proud to have worked with hundreds of clients across various industries, from startups to Fortune 500 companies, helping them achieve their digital transformation goals.</p>
          
          <div class="flex items-center">
            <img 
              src="https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&auto=format&fit=crop&w=96&h=96&q=80" 
              alt="Alex Johnson" 
              class="w-16 h-16 rounded-full object-cover border-4 border-white shadow-md"
            />
            <div class="ml-4">
              <p class="font-bold">Alex Johnson</p>
              <p class="text-secondary-600">Founder & CEO</p>
            </div>
          </div>
        </div>
      </AnimatedSection>
    </div>
  </div>
</section>

<!-- Our Values Section -->
<section class="section bg-secondary-50">
  <div class="container">
    <AnimatedSection>
      <div class="text-center max-w-3xl mx-auto mb-16">
        <h2 class="text-3xl md:text-4xl font-bold mb-4">Our Core Values</h2>
        <p class="text-secondary-600">These principles guide everything we do and define who we are as a company.</p>
      </div>
    </AnimatedSection>
    
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
      {#each values as value, i}
        <AnimatedSection delay={i * 200}>
          <div class="bg-white rounded-lg shadow-lg p-6 text-center h-full">
            <div class="w-20 h-20 bg-primary-100 rounded-full flex items-center justify-center mx-auto mb-6">
              <div class="text-primary-600">
                {@html value.icon}
              </div>
            </div>
            <h3 class="text-xl font-bold mb-3">{value.title}</h3>
            <p class="text-secondary-600">{value.description}</p>
          </div>
        </AnimatedSection>
      {/each}
      
    </div>
  </div>
</section>

<!-- Timeline Section -->
<section class="section">
  <div class="container">
    <AnimatedSection>
      <div class="text-center max-w-3xl mx-auto mb-16">
        <h2 class="text-3xl md:text-4xl font-bold mb-4">Our Journey</h2>
        <p class="text-secondary-600">A look at how we've grown and evolved over the years.</p>
      </div>
    </AnimatedSection>
    
    <div class="relative">
      <!-- Timeline Line -->
      <div class="absolute left-1/2 transform -translate-x-1/2 h-full w-1 bg-primary-200 hidden md:block"></div>
      
      {#each timeline as item, i}
        <AnimatedSection delay={i * 300}>
          <div class="relative mb-12">
            <div class="flex flex-col md:flex-row items-center">
              <div class={`md:w-1/2 ${i % 2 === 0 ? 'md:pr-12 md:text-right' : 'md:pl-12 md:order-last'}`}>
                <div class="bg-white rounded-lg shadow-lg p-6">
                  <span class="text-primary-600 font-bold text-xl">{item.year}</span>
                  <h3 class="text-xl font-bold mt-2 mb-3">{item.title}</h3>
                  <p class="text-secondary-600">{item.description}</p>
                </div>
              </div>
              
              <div class="hidden md:flex items-center justify-center w-12 h-12 rounded-full bg-primary-600 text-white font-bold absolute left-1/2 transform -translate-x-1/2 shadow-lg">
                {i + 1}
              </div>
            </div>
          </div>
        </AnimatedSection>
      {/each}
      
    </div>
  </div>
</section>

<!-- Team Section -->
<section class="section bg-secondary-50">
  <div class="container">
    <AnimatedSection>
      <div class="text-center max-w-3xl mx-auto mb-16">
        <h2 class="text-3xl md:text-4xl font-bold mb-4">Meet Our Team</h2>
        <p class="text-secondary-600">The talented people behind our success.</p>
      </div>
    </AnimatedSection>
    
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">
      {#each teamMembers as member, i}
        <AnimatedSection delay={i * 200}>
          <TeamMember 
            name={member.name} 
            position={member.position} 
            image={member.image} 
            socialLinks={member.socialLinks} 
          />
        </AnimatedSection>
      {/each}
      
    </div>
  </div>
</section>

<!-- CTA Section -->
<section class="section bg-primary-600 text-white">
  <div class="container">
    <div class="max-w-4xl mx-auto text-center">
      <AnimatedSection>
        <h2 class="text-3xl md:text-4xl font-bold mb-6">Ready to Work With Us?</h2>
        <p class="text-xl text-primary-100 mb-8">Let's discuss how we can help your business grow with our innovative solutions.</p>
        <a href="/contact" class="btn bg-white text-primary-700 hover:bg-primary-50 text-lg px-8 py-4">Get in Touch</a>
      </AnimatedSection>
    </div>
  </div>
</section>