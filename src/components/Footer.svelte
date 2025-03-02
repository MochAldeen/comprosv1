<script lang="ts">
  import { push } from 'svelte-spa-router';
  
  const navigate = (path: string) => {
    push(path);
  };
  
  function navigateAndScrollToTop(route: string) {
    push(route);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }

  const currentYear = new Date().getFullYear();
</script>

<footer class="bg-secondary-900 text-white pt-16 pb-8">
  <div class="container">
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8 mb-12">
      <div>
        <h3 class="text-xl font-bold mb-4">Tech<span class="text-primary-400">Al</span></h3>
        <p class="text-secondary-300 mb-4">Innovative solutions for modern businesses. We help transform your ideas into reality.</p>
        <div class="flex space-x-4">
          <a href="https://x.com" class="text-secondary-300 hover:text-primary-400 transition-colors" aria-label="Twitter">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
              <path d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z"/>
            </svg>
          </a>
          <a href="https://facebook.com" class="text-secondary-300 hover:text-primary-400 transition-colors" aria-label="Facebook">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
              <path d="M9 8h-3v4h3v12h5v-12h3.642l.358-4h-4v-1.667c0-.955.192-1.333 1.115-1.333h2.885v-5h-3.808c-3.596 0-5.192 1.583-5.192 4.615v3.385z"/>
            </svg>
          </a>
          <a href="https://linkedin.com/" class="text-secondary-300 hover:text-primary-400 transition-colors" aria-label="LinkedIn">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
              <path d="M4.98 3.5c0 1.381-1.11 2.5-2.48 2.5s-2.48-1.119-2.48-2.5c0-1.38 1.11-2.5 2.48-2.5s2.48 1.12 2.48 2.5zm.02 4.5h-5v16h5v-16zm7.982 0h-4.968v16h4.969v-8.399c0-4.67 6.029-5.052 6.029 0v8.399h4.988v-10.131c0-7.88-8.922-7.593-11.018-3.714v-2.155z"/>
            </svg>
          </a>
        </div>
      </div>
      
      <div>
        <h3 class="text-lg font-bold mb-4">Quick Links</h3>
        <ul class="space-y-2">
          <li><a href="/" on:click|preventDefault={() => navigateAndScrollToTop('/')} class="text-secondary-300 hover:text-primary-400 transition-colors">Home</a></li>
          <li><a href="/about" on:click|preventDefault={() => navigateAndScrollToTop('/about')} class="text-secondary-300 hover:text-primary-400 transition-colors">About Us</a></li>
          <li><a href="/services" on:click|preventDefault={() => navigateAndScrollToTop('/services')} class="text-secondary-300 hover:text-primary-400 transition-colors">Services</a></li>
          <li><a href="/contact" on:click|preventDefault={() => navigateAndScrollToTop('/contact')} class="text-secondary-300 hover:text-primary-400 transition-colors">Contact</a></li>
        </ul>
      </div>
      
      <div>
        <h3 class="text-lg font-bold mb-4">Services</h3>
        <ul class="space-y-2">
          <li><a href="/services" on:click|preventDefault={() => navigateAndScrollToTop('/services')} class="text-secondary-300 hover:text-primary-400 transition-colors">Web Development</a></li>
          <li><a href="/services" on:click|preventDefault={() => navigateAndScrollToTop('/services')} class="text-secondary-300 hover:text-primary-400 transition-colors">Mobile Apps</a></li>
          <li><a href="/services" on:click|preventDefault={() => navigateAndScrollToTop('/services')} class="text-secondary-300 hover:text-primary-400 transition-colors">UI/UX Design</a></li>
          <li><a href="/services" on:click|preventDefault={() => navigateAndScrollToTop('/services')} class="text-secondary-300 hover:text-primary-400 transition-colors">Digital Marketing</a></li>
        </ul>
      </div>
      
      <div>
        <h3 class="text-lg font-bold mb-4">Contact Us</h3>
        <address class="not-italic">
          <p class="text-secondary-300 mb-2">123 Business Avenue</p>
          <p class="text-secondary-300 mb-2">Tech District, Jakarta 12430</p>
          <p class="text-secondary-300 mb-2">info@techal.com</p>
          <p class="text-secondary-300">+62 877 2772 7654</p>
        </address>
      </div>
    </div>
    
    <div class="border-t border-secondary-700 pt-8">
      <div class="flex flex-col md:flex-row justify-between items-center">
        <p class="text-secondary-400 text-sm mb-4 md:mb-0">© {currentYear} TechAl. All rights reserved.</p>
        <div class="flex space-x-6">
          <a href="https://x.com" class="text-secondary-400 hover:text-primary-400 text-sm transition-colors">Privacy Policy</a>
          <a href="https://x.com" class="text-secondary-400 hover:text-primary-400 text-sm transition-colors">Terms of Service</a>
          <a href="https://x.com" class="text-secondary-400 hover:text-primary-400 text-sm transition-colors">Sitemap</a>
        </div>
      </div>
    </div>
  </div>
</footer>