const predictedScore = document.querySelector(".predictedScore li");
const homeScore = document.querySelector(".home-input");
const awayScore = document.querySelector(".away-input");
// WNBA predict button
const predictWNBA = document.querySelector(".predictWNBA");
predictWNBA.addEventListener("click", function () {
  document.getElementById("WNBAFinalScore").innerHTML =
    homeScore.value + " - " + awayScore.value;
});

console.log("hello");
