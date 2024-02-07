from flask import Flask
from flask import request
from flask import render_template

sample = Flask(__name__)

@sample.route("/")

def main():
    return render_template("index.html")

@sample.route("/menu")

def menu():
    return render_template("menu.html")

@sample.route("/table_book")

def table_book():
    return render_template("table_book.html")

@sample.route("/about")

def book():
    return render_template("about.html")

if(__name__ == "__main__"):
    sample.run(host="0.0.0.0", port=5030)