<script lang="ts">
  export let name: string;
  export let position: string;
  export let company: string;
  export let testimonial: string;
  export let image: string;
</script>

<div class="bg-white rounded-lg shadow-lg p-4 h-full flex flex-col justify-between">
  <div class="flex items-center mb-4">
    <div class="w-12 h-12 bg-primary-700 rounded-full flex items-center justify-center mr-4">
      <div class="text-primary-600"></div>
      <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-white" fill="currentColor" viewBox="0 0 24 24">
        <path d="M14.017 21v-7.391c0-5.704 3.731-9.57 8.983-10.609l.995 2.151c-2.432.917-3.995 3.638-3.995 5.849h4v10h-9.983zm-14.017 0v-7.391c0-5.704 3.748-9.57 9-10.609l.996 2.151c-2.433.917-3.996 3.638-3.996 5.849h3.983v10h-9.983z"/>
      </svg>
    </div>
  </div>
  
  <div class="pt-6">
    <p class="text-secondary-700 mb-6 italic">{testimonial}</p>
    
    <div class="flex items-center">
      <img src={image} alt={name} class="w-12 h-12 rounded-full object-cover mr-4" />
      <div>
        <h4 class="font-bold text-secondary-900">{name}</h4>
        <p class="text-sm text-secondary-600">{position}, {company}</p>
      </div>
    </div>
  </div>
</div>
