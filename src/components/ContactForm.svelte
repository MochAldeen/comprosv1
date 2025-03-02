<script lang="ts">
  import { onMount } from 'svelte';
  
  let name = '';
  let email = '';
  let subject = '';
  let message = '';
  let isSubmitting = false;
  let isSuccess = false;
  let errorMessage = '';
  
  const handleSubmit = () => {
    isSubmitting = true;
    errorMessage = '';
    
    // Simulate form submission
    setTimeout(() => {
      isSubmitting = false;
      isSuccess = true;
      
      // Reset form after success
      name = '';
      email = '';
      subject = '';
      message = '';
      
      // Reset success message after 5 seconds
      setTimeout(() => {
        isSuccess = false;
      }, 5000);
    }, 1500);
  };
</script>

<form on:submit|preventDefault={handleSubmit} class="bg-white rounded-lg shadow-lg p-6 md:p-8">
  <h2 class="text-2xl font-bold mb-6">Get in Touch</h2>
  
  {#if isSuccess}
    <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded mb-6 relative" role="alert">
      <strong class="font-bold">Success!</strong>
      <span class="block sm:inline"> Your message has been sent. We'll get back to you soon.</span>
    </div>
  {/if}
  
  
  {#if errorMessage}
    <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded mb-6 relative" role="alert">
      <strong class="font-bold">Error!</strong>
      <span class="block sm:inline"> {errorMessage}</span>
    </div>
  {/if}
  
  
  <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
    <div>
      <label for="name" class="block text-sm font-medium text-secondary-700 mb-1">Full Name</label>
      <input 
        type="text" 
        id="name" 
        bind:value={name} 
        required 
        class="w-full px-4 py-2 border border-secondary-300 rounded-md focus:outline-none focus:ring-2 focus:ring-primary-500 focus:border-transparent"
        placeholder="John Doe"
      />
    </div>
    
    <div>
      <label for="email" class="block text-sm font-medium text-secondary-700 mb-1">Email Address</label>
      <input 
        type="email" 
        id="email" 
        bind:value={email} 
        required 
        class="w-full px-4 py-2 border border-secondary-300 rounded-md focus:outline-none focus:ring-2 focus:ring-primary-500 focus:border-transparent"
        placeholder="john@example.com"
      />
    </div>
  </div>
  
  <div class="mb-6">
    <label for="subject" class="block text-sm font-medium text-secondary-700 mb-1">Subject</label>
    <input 
      type="text" 
      id="subject" 
      bind:value={subject} 
      required 
      class="w-full px-4 py-2 border border-secondary-300 rounded-md focus:outline-none focus:ring-2 focus:ring-primary-500 focus:border-transparent"
      placeholder="How can we help you?"
    />
  </div>
  
  <div class="mb-6">
    <label for="message" class="block text-sm font-medium text-secondary-700 mb-1">Message</label>
    <textarea 
      id="message" 
      bind:value={message} 
      required 
      rows="5" 
      class="w-full px-4 py-2 border border-secondary-300 rounded-md focus:outline-none focus:ring-2 focus:ring-primary-500 focus:border-transparent"
      placeholder="Tell us more about your project, needs, and timeline..."
    ></textarea>
  </div>
  
  <button 
    type="submit" 
    class="btn btn-primary w-full" 
    disabled={isSubmitting}
  >
    {#if isSubmitting}
      <svg class="animate-spin -ml-1 mr-3 h-5 w-5 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
        <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
        <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
      </svg>
      Sending...
    {:else}
      Send Message
    {/if}
    
  </button>
</form>