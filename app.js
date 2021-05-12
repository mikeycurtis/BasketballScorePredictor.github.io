console.log('hello')
function passNBAData() {
  var x = document.getElementById("nbaForm");
  var text = "";
  var i;
  for (i = 0; i < x.length; i++) {
    text += x.elements[i].id + ": " + x.elements[i].value + "<br>";
  }
  document.getElementById("prediction").innerHTML = text;
}

function passWNBAData() {
  var x = document.getElementById("wnbaForm");
  var text = "";
  var i;
  for (i = 0; i < x.length; i++) {
    text += x.elements[i].id + ": " + x.elements[i].value + "<br>";
  }
  document.getElementById("prediction").innerHTML = text;
}

let modelNBA;
(async function () {
  modelNBA = await tf.loadLayersModel("./finalModelJS/model.json");
  $(".progress-bar").hide();
})();
const x = tf.tensor([8, 20, 6, 14, 6, 8, 4, 19, 7, 3, 5, 8, 6, 45, 1]);
modelNBA.predict(x).print();
// Define a model for linear regression.
const model = tf.sequential();
model.add(tf.layers.dense({ units: 1, inputShape: [1] }));

model.compile({ loss: "meanSquaredError", optimizer: "sgd" });

// Generate some synthetic data for training.
const xs = tf.tensor2d([1, 2, 3, 4], [4, 1]);
const ys = tf.tensor2d([1, 3, 5, 7], [4, 1]);

// Train the model using the data.
model.fit(xs, ys, { epochs: 10 }).then(() => {
  // Use the model to do inference on a data point the model hasn't seen before:
  model.predict(tf.tensor2d([5], [1, 1])).print();
  // Open the browser devtools to see the output
});
