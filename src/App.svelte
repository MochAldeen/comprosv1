<script lang="ts">
  import Router from 'svelte-spa-router'
  
  import Header from './components/Header.svelte'
  import Footer from './components/Footer.svelte'
  import Home from './routes/Home.svelte'
  import About from './routes/About.svelte'
  import Services from './routes/Services.svelte'
  import Contact from './routes/Contact.svelte'
  import NotFound from './routes/NotFound.svelte'

  const routes = {
    '/': Home,
    '/about': About,
    '/services': Services,
    '/contact': Contact,
    '*': NotFound
  }
</script>

<Header />

<main>
  <Router {routes} />
</main>

<Footer />