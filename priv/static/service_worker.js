// Minimal service worker to silence 404 errors
self.addEventListener('install', (event) => {
  self.skipWaiting();
});

self.addEventListener('activate', (event) => {
  return self.clients.claim();
});

// This service worker doesn't actually do anything yet 
