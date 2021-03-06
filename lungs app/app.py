# -*- coding: utf-8 -*-






import numpy as np
import pickle
import pandas as pd
import streamlit as st 
import os 


os.chdir(r"C:\Users\User\Desktop\data science project\app\lungs app")


from PIL import Image



pickle_in = open("classifier.pkl","rb")
classifier=pickle.load(pickle_in)

def welcome():
    return "Welcome All"


def predict_cancer_authentication(Age,Smokes,AreaQ,Alkhol):
    
    
   
    prediction=classifier.predict([[Age,Smokes,AreaQ,Alkhol]])
    print(prediction)
    return prediction



def main():
    st.title("Lung Cancer")
    html_temp = """
    <div style="background-color:tomato;padding:10px">
    <h2 style="color:white;text-align:center;">Streamlit Cancer Predicting ML App </h2>
    </div>
    """
    st.markdown(html_temp,unsafe_allow_html=True)
    Age = st.text_input("Age","Type Here")
    Smokes= st.text_input("Smokes","Type Here")
    AreaQ = st.text_input("AreaQ","Type Here")
    Alkhol = st.text_input("Alkhol","Type Here")
    result=""
    if st.button("Predict"):
        result=predict_cancer_authentication(Age,Smokes,AreaQ,Alkhol)
    st.success('The output is {}'.format(result))
    if st.button("About"):
        st.text("Lets LEarn")
        st.text("Built with Streamlit")

if __name__=='__main__':
    main()