from bottle import *
import os

@route("/")
def index():
    return template("index.tpl")

@route('/Myndir/<filename>')
def server_static(filename):
    return static_file(filename, root="./Myndir")

@get("/data")
def data():
    n = request.query.get("nafn")
    h = request.query.get("heimilisfang")
    net = request.query.get("netfang")
    snr = request.query.get("símanúmer")
    
    stærð = request.query.get("stærð")

    álegg = request.query.getall("álegg")

    fjöldi_álegg = len(álegg) * 200
    verð = 0
    if stærð == "9tomma":
        verð = 1000
    if stærð == "12tomma":
        verð = 1500
    if stærð == "18tomma":
        verð = 2000
    verð = verð + fjöldi_álegg
    verð_með_virðisaukaskatt = verð*1.25
    
    return template("info",n=n,h=h,net=net,snr=snr,stærð=stærð,álegg=álegg,verð=verð,verð_með_virðisaukaskatt=verð_með_virðisaukaskatt)

run(host="0.0.0.0", port=os.environ.get("PORT"))
