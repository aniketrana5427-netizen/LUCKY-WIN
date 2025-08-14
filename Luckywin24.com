!DOCTYPE html>
<html lang="hi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NumMystic - à¤¨à¤‚à¤¬à¤° à¤­à¤µà¤¿à¤·à¥à¤¯à¤µà¤¾à¤£à¥€ à¤–à¥‡à¤²</title>
  <style>
    body {
      background-color: #1e1e2f;
      color: #f0f0f0;
      font-family: 'Segoe UI', sans-serif;
      text-align: center;
      padding: 20px;
    }
    .container {
      max-width: 500px;
      margin: auto;
      background-color: #2e2e3e;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 10px #00ffe0;
    }
    input[type="number"] {
      padding: 10px;
      font-size: 18px;
      width: 80%;
      margin-bottom: 20px;
    }
    button {
      padding: 10px 20px;
      font-size: 18px;
      background-color: #00ffe0;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    button:hover {
      background-color: #00ccaa;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>ðŸ”® NumMystic</h1>
    <p>à¤…à¤ªà¤¨à¤¾ à¤†à¤œ à¤•à¤¾ à¤¨à¤‚à¤¬à¤° à¤…à¤¨à¥à¤®à¤¾à¤¨ à¤²à¤—à¤¾à¤“ (1 à¤¸à¥‡ 100 à¤•à¥‡ à¤¬à¥€à¤š)</p>
    <input type="number" id="userNumber" min="1" max="100" placeholder="à¤…à¤ªà¤¨à¤¾ à¤¨à¤‚à¤¬à¤° à¤²à¤¿à¤–à¥‡à¤‚">
    <br>
    <button onclick="predictNumber()">à¤­à¤µà¤¿à¤·à¥à¤¯à¤µà¤¾à¤£à¥€ à¤•à¤°à¥‹</button>
    <p id="result"></p>
  </div>

  <script>
    function predictNumber() {
      const userNum = parseInt(document.getElementById("userNumber").value);
      const luckyNum = Math.floor(Math.random() * 100) + 1;

      if (userNum === luckyNum) {
