<script lang="ts">
  import { push } from 'svelte-spa-router';
  import AnimatedSection from '../components/AnimatedSection.svelte';
  import ContactForm from '../components/ContactForm.svelte';
</script>

<!-- Hero Section -->
<section class="pt-32 pb-20 bg-secondary-900 text-white">
  <div class="container">
    <div class="max-w-3xl">
      <h1 class="text-4xl md:text-5xl font-bold mb-6">Contact Us</h1>
      <p class="text-xl text-secondary-200">Get in touch with our team to discuss your project or inquire about our services.</p>
    </div>
  </div>
</section>

<!-- Contact Section -->
<section class="section">
  <div class="container">
    <div class="grid grid-cols-1 lg:grid-cols-2 gap-12">
      <AnimatedSection animation="slide-in">
        <div>
          <h2 class="text-3xl font-bold mb-6">Get in Touch</h2>
          <p class="text-secondary-600 mb-8">We'd love to hear from you. Fill out the form and we'll get back to you as soon as possible.</p>
          
          <div class="mb-8">
            <h3 class="text-xl font-bold mb-4">Our Office</h3>
            <div class="flex items-start mb-4">
              <div class="w-10 h-10 bg-primary-100 rounded-full flex items-center justify-center mr-4 mt-1">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-primary-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
                </svg>
              </div>
              <div>
                <h4 class="font-bold text-secondary-800">Address</h4>
                <address class="not-italic text-secondary-600">
                  123 Business Avenue<br />
                  Tech District, Jakarta 12430<br />
                  Indonesia
                </address>
              </div>
            </div>
            
            <div class="flex items-start mb-4">
              <div class="w-10 h-10 bg-primary-100 rounded-full flex items-center justify-center mr-4 mt-1">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-primary-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                </svg>
              </div>
              <div>
                <h4 class="font-bold text-secondary-800">Email</h4>
                <p class="text-secondary-600">
                  <a href="mailto:info@techal.com" class="text-primary-600 hover:text-primary-700">info@techal.com</a>
                </p>
              </div>
            </div>
            
            <div class="flex items-start">
              <div class="w-10 h-10 bg-primary-100 rounded-full flex items-center justify-center mr-4 mt-1">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-primary-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                </svg>
              </div>
              <div>
                <h4 class="font-bold text-secondary-800">Phone</h4>
                <p class="text-secondary-600">
                  <a href="tel:+15551234567" class="text-primary-600 hover:text-primary-700">+62 877 2772 7654</a>
                </p>
              </div>
            </div>
          </div>
          
          <div>
            <h3 class="text-xl font-bold mb-4">Business Hours</h3>
            <table class="w-full text-secondary-600">
              <tbody>
                <tr>
                  <td class="py-2 font-medium">Monday - Friday</td>
                  <td class="py-2">9:00 AM - 6:00 PM</td>
                </tr>
                <tr>
                  <td class="py-2 font-medium">Saturday</td>
                  <td class="py-2">10:00 AM - 4:00 PM</td>
                </tr>
                <tr>
                  <td class="py-2 font-medium">Sunday</td>
                  <td class="py-2">Closed</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </AnimatedSection>
      
      <AnimatedSection animation="fade-in" delay={300}>
        <ContactForm />
      </AnimatedSection>
    </div>
  </div>
</section>

<!-- Map Section -->
<section class="section bg-secondary-50">
  <div class="container">
    <AnimatedSection>
      <div class="text-center max-w-3xl mx-auto mb-12">
        <h2 class="text-3xl font-bold mb-4">Find Us</h2>
        <p class="text-secondary-600">Visit our office or contact us online. We're here to help.</p>
      </div>
    </AnimatedSection>
    
    <div class="rounded-lg overflow-hidden shadow-xl h-96">
      <iframe 
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d19874.282056056026!2d106.793304!3d-6.291055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f1dd5875312b%3A0xbbe44f1a307b6f15!2sMasjid%20Al%20Istiqomah!5e0!3m2!1sen!2sus!4v1676570625882!5m2!1sen!2sus" 
        width="100%" 
        height="100%" 
        style="border:0;" 
        allowfullscreen 
        loading="lazy" 
        referrerpolicy="no-referrer-when-downgrade"
        title="TechAl office location"
      ></iframe>
    </div>
  </div>
</section>

<!-- FAQ Section -->
<section class="section">
  <div class="container">
    <AnimatedSection>
      <div class="text-center max-w-3xl mx-auto mb-12">
        <h2 class="text-3xl font-bold mb-4">Frequently Asked Questions</h2>
        <p class="text-secondary-600">Find answers to common questions about our services and process.</p>
      </div>
    </AnimatedSection>
    
    <div class="grid grid-cols-1 md:grid-cols-2 gap-8 max-w-5xl mx-auto">
      <AnimatedSection delay={100}>
        <div class="bg-white rounded-lg shadow-lg p-6">
          <h3 class="text-xl font-bold mb-3">How long does a typical project take?</h3>
          <p class="text-secondary-600">Project timelines vary depending on complexity and scope. A simple website might take 4-6 weeks, while a complex web application could take 3-6 months. We'll provide a detailed timeline during our initial consultation.</p>
        </div>
      </AnimatedSection>
      
      <AnimatedSection delay={200}>
        <div class="bg-white rounded-lg shadow-lg p-6">
          <h3 class="text-xl font-bold mb-3">What is your pricing structure?</h3>
          <p class="text-secondary-600">We offer flexible pricing options including fixed-price projects, hourly rates, and retainer agreements. The cost depends on project requirements, complexity, and timeline. Contact us for a custom quote.</p>
        </div>
      </AnimatedSection>
      
      <AnimatedSection delay={300}>
        <div class="bg-white rounded-lg shadow-lg p-6">
          <h3 class="text-xl font-bold mb-3">Do you offer maintenance services?</h3>
          <p class="text-secondary-600">Yes, we offer ongoing maintenance and support services to ensure your website or application continues to perform optimally. We have various maintenance packages to suit different needs.</p>
        </div>
      </AnimatedSection>
      
      <AnimatedSection delay={400}>
        <div class="bg-white rounded-lg shadow-lg p-6">
          <h3 class="text-xl font-bold mb-3">How do we get started?</h3>
          <p class="text-secondary-600">Getting started is easy! Simply contact us through our contact form, email, or phone. We'll schedule an initial consultation to discuss your project requirements and goals, then provide a proposal and timeline.</p>
        </div>
      </AnimatedSection>
    </div>
  </div>
</section>

<!-- CTA Section -->
<section class="section bg-primary-600 text-white">
  <div class="container">
    <div class="max-w-4xl mx-auto text-center">
      <AnimatedSection>
        <h2 class="text-3xl md:text-4xl font-bold mb-6">Ready to Transform Your Business?</h2>
        <p class="text-xl text-primary-100 mb-8">Contact us today to discuss your project and how we can help you achieve your goals.</p>
        <a href="/contact" on:click|preventDefault={() => push('/contact')} class="btn bg-white text-primary-700 hover:bg-primary-50 text-lg px-8 py-4">Get Started Today</a>
      </AnimatedSection>
    </div>
  </div>
</section>