fetch('/api')
  .then(response => response.json())
  .then(data => {
    document.getElementById('api-message').textContent = data.message;
  })
  .catch(error => console.error('Error fetching data:', error));
