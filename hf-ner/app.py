import spacy
import gradio as gr
import sparknlp
from sparknlp.pretrained import PretrainedPipeline
from sparknlp.base import *
'''
import jdk 
jdk.install('8')
'''
'''
#https://pypi.org/project/jdk4py/
from jdk4py import JAVA, JAVA_HOME, JAVA_VERSION

print(JAVA)
print(JAVA_HOME)
print(JAVA_VERSION)

import os
import sys

os.environ['PYSPARK_PYTHON'] = sys.executable
os.environ['PYSPARK_DRIVER_PYTHON'] = sys.executable
os.environ['JAVA_HOME'] = f"{JAVA_HOME}"
#os.environ['PATH'] = f"{os.environ.get('PATH')}:{os.environ.get('JAVA_HOME')}/bin"



import jpype
if not jpype.isJVMStarted():
  jpype.startJVM(jpype.getDefaultJVMPath())

'''
# Code adapted from https://journal.code4lib.org/articles/15405
def ner_spacy(text):
    spacy_nlp = spacy.load("en_core_web_sm")  # You need to execute python -m spacy download en_core_web_sm, to be able to use this module
    doc = spacy_nlp(text)
    places = [(ent, ent.label_) for ent in doc.ents if ent.label_ in ['GPE', 'LOC']]
    return places

def ner_spark_nlp(text):
  # create the spark session 
  spark = sparknlp.start()
  # pick a pretrained spark pipeline
  pipeline = PretrainedPipeline('onto_recognize_entities_sm')
  # annotate the input text
  result = pipeline.annotate(text)
  res = list(zip(result['token'], result['ner']))
  # extract places only from the result
  places = [ent for ent in res if ent[1] == "B-GPE" or ent[1] == "I-GPE" or ent[1] == "B-LOC" or ent[1] == "I-LOC"]
  
  return places


def get_named_entities (library, input_text):
  if library == "Spacy":
    return ner_spacy(input_text)
  else :
    return ner_spark_nlp(input_text)


demo = gr.Interface(fn=get_named_entities,
                    inputs=[gr.Radio(["Spacy", "Spark-NLP"], label="Library", info="Which library do you want to use for the extraction process?"), 
                            gr.Textbox(label= "Input text", placeholder="Enter your text here...")],
                    outputs=gr.Textbox(label= "Output text"))
demo.launch()
