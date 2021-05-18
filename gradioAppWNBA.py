import tensorflow as tf
from tensorflow import keras
import gradio as gr

final_modelWNBA = tf.keras.models.load_model("finalModelWNBA")

df_input = gr.inputs.Dataframe(headers=["FGM", "FGA", "FG3M", "FG3A", "FTM", "FTA", "OREB", "DREB", "AST",
                                        "STL", "BLK", "TO", "PF", "PTS"], row_count=2, col_count=14)
output = gr.outputs.Textbox(label="Predicted Final Score (Home - Away)")

Description = "Enter half time statistics. "\
              "Enter Home team's stats in row labeled 1. "\
              "Enter Away team's stats in the row labeled 2."


def predictWNBAGradio(df):
    home = [int(num) for num in df.iloc[0, :].values]
    home.append(1)
    home_pred = round(final_modelWNBA.predict([[home]])[0][0][0])
    away = [int(num) for num in df.iloc[1, :].values]
    away.append(0)
    away_pred = round(final_modelWNBA.predict([[away]])[0][0][0])
    return "{} - {}".format(home_pred, away_pred)


df_input = gr.inputs.Dataframe(headers=["FGM", "FGA", "FG3M", "FG3A", "FTM", "FTA", "OREB", "DREB", "AST",
                                        "STL", "BLK", "TO", "PF", "PTS"], row_count=2, col_count=14)
output = gr.outputs.Textbox(label="Predicted Final Score (Home - Away)")

Description = "Enter half time statistics. "\
              "Enter Home team's stats in row labeled 1. "\
              "Enter Away team's stats in the row labeled 2."

iface = gr.Interface(predictWNBAGradio, inputs=df_input, outputs=output,
                     title="WNBA Score Predictor", description=Description)
iface.launch(share=True)
