from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import View, TemplateView
from django.shortcuts import render
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponse, HttpResponseRedirect
from django.contrib.auth.models import User
from .models import *


def new_format(coordinates):
    coordinates = list(coordinates.split(";"))
    new_coords = []
    for coord in coordinates:
        if coord != "":
            new_coords.append(
                (coord[3:coord.find("lat=")], coord[coord.find("lat=")+4:]))
    return new_coords


def base_context(request):
    context = {}
    user = request.user
    if user != None:
        context['username'] = user.username
    else:
        context['username'] = "none"

    return context


def home(request):
    context = base_context(request)
    return render(request, "main.html", context)


class Registration(View):
    def get(self, request):
        context = base_context(request)

        return render(request, "registration.html", context)

    def post(self, request):
        context = {}
        form = request.POST
        user_props = {}
        for prop in form:
            if prop not in ('csrfmiddlewaretoken', 'username') and form[prop] != "":
                user_props[prop] = form[prop]
        # print(user_props)
        # StandartUser.objects.create_user(
        #     username=form['username'], **user_props)
        # print(form)
        return HttpResponseRedirect("/login")


class UserLogin(View):
    # permission_required = ('posts.can_view', 'login.can_view')
    # template_name = 'create_post.html'
    # permission_denied_message = "Sorry. Access denied"
    # raise_exception = True
    def __init__(self):
        self.error = 0
    # form_class = LoginUser

    def get(self, request):
        context = base_context(request)
        context['error'] = 0
        # context['form'] = self.form_class()
        return render(request, "login.html", context)

    def post(self, request):
        context = {}
        form = request.POST
        # validation = UserForm(request.POST)
        if True:  # validation.is_valid():
            # print(form)
            username = form['username']
            password = form['password']

            # new_post.author = Author.objects.get(id = request.POST.author)
            # new_post.save()
            user = authenticate(username=username, password=password)
            if user is not None:
                if user.is_active:
                    login(request, user)
                    context['name'] = username
                    return HttpResponseRedirect("/")
            elif authenticate(username=username, password=password) is not None:
                user = authenticate(email=username, password=password)
                if user.is_active:
                    login(request, user)
                    context['name'] = username
                    return HttpResponseRedirect("/")
            else:
                context = base_context(request)
                context['error'] = 1
                # return Posts.get(self,request)
                return render(request, "login.html", context)
        else:
            return HttpResponse("Data isn't valid")


class NewHike(LoginRequiredMixin, View):
    template_name = 'main.html'

    def get(self, request):
        context = base_context(request)
        return render(request, "new_hike.html", context)

    def post(self, request):
        context = base_context(request)
        form = request.POST
        user_props = {}
        print(form)

        username = request.user.username
        password = request.user.password

        user = authenticate(username=username, password=password)

        if user is not None:
            if user.is_active:
                login(request, user)
                context['name'] = username
                return HttpResponseRedirect("/")
        else:
            user = User.objects.get(username = 'admin')

        hike = Hike(
            name=form['name'],
            creator=user,
            description=form['description'],
            start_date=form['start'],
            end_date=form['end'],
            difficulty=form['difficulty'],
            type_of_hike=form['type'],
            coordinates=new_format(form['coordinates'])
        )
        hike.save()

        return render(request, "new_hike.html", context)


class Logout (View):
    def get(self, request):
        logout(request)
        return HttpResponseRedirect("/")


class AllHikes(View):

    def get(self, request):

        context = base_context(request)
        hikes = []
        for hike in Hike.objects.all():

            text = {}
            text['link'] = '/hike/' + str(hike.id)
            text['name'] = hike.name
            text['start_date'] = hike.start_date
            text['end_date'] = hike.end_date

            hikes.append(text)
        context['content'] = hikes
        return render(request, "hikes.html", context)


class SetHike(View):
    def get(self, request, id):
        context = base_context(request)
        hike = Hike.objects.get(id=id)
        text = {}
        text['name'] = hike.name
        text['start_date'] = hike.start_date
        text['end_date'] = hike.end_date
        text['description'] = hike.description
        landmarks = []
        for landmark in hike.landmarks:
            landmarks.append(landmark)
        text['landmarks'] = landmarks
        context['content'] = text
        return render(request, "hike.html", context)
