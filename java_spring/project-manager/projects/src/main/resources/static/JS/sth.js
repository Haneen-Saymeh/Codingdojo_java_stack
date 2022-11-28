const axios = require("axios");

const options = {
  method: 'GET',
  url: 'https://ip-geo-location.p.rapidapi.com/ip/check',
  params: {format: 'json'},
  headers: {
    'X-RapidAPI-Key': '8f480b9d00mshbed840de095cc4fp125621jsn5331efcbd9b8',
    'X-RapidAPI-Host': 'ip-geo-location.p.rapidapi.com'
  }
};

axios.request(options).then(function (response) {
	console.log(response.data);
}).catch(function (error) {
	console.error(error);
});