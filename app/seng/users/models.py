from django.db import models
from django.contrib.auth.models import User
# Create your models here.

class Profile(models.Model):
	user = models.OneToOneField(User, on_delete=models.CASCADE)
	address = models.CharField(max_length=150)
	image = models.ImageField(default='default.jpg', upload_to='profile_pics/')

	def __str__(self):
		return self.user.username + ' Profile'


