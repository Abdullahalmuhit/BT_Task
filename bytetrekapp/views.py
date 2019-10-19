from django.shortcuts import render, HttpResponse, get_object_or_404, redirect



def index(request):
    return HttpResponse("<h1>Hello world</h1>")
