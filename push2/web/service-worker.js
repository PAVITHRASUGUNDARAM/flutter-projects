// service-worker.js
self.addEventListener('install', function(event) {
    self.skipWaiting();
    console.log('Service Worker installed');
  });
  
  self.addEventListener('activate', function(event) {
    console.log('Service Worker activated');
  });
  
  self.addEventListener('push', function(event) {
    const payload = event.data ? event.data.json() : {};
    
    const options = {
      body: payload.body || 'No content',
      icon: payload.icon || '/icons/icon-192x192.png',
      badge: payload.badge || '/icons/badge-96x96.png',
      data: payload.data || {},
      actions: payload.actions || [],
      tag: payload.tag || 'default-tag',
    };
  
    event.waitUntil(
      self.registration.showNotification(
        payload.title || 'Notification',
        options
      )
    );
  });
  
  self.addEventListener('notificationclick', function(event) {
    event.notification.close();
    
    const urlToOpen = event.notification.data.url || '/';
    
    event.waitUntil(
      clients.matchAll({ type: 'window' }).then(function(clientList) {
        for (var i = 0; i < clientList.length; i++) {
          var client = clientList[i];
          if (client.url === urlToOpen && 'focus' in client) {
            return client.focus();
          }
        }
        if (clients.openWindow) {
          return clients.openWindow(urlToOpen);
        }
      })
    );
  });