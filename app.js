const express = require("express");
const app = express();

const PORT = 3000;

// Fibonacci API
function fibonacci(n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

app.get("/", (req, res) => {
  res.send("🚀 fibeeee app is running!");
});

app.get("/fib/:num", (req, res) => {
  const num = parseInt(req.params.num);
  const result = fibonacci(num);
  res.json({ number: num, fibonacci: result });
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
