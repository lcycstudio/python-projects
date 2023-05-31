# Generated by Django 2.2.10 on 2020-10-19 22:07

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('apps_arithmetic', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Grade',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('grade', models.CharField(max_length=200, null=True)),
                ('appname', models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='apps_arithmetic.AppsArithmetic')),
            ],
            options={
                'ordering': ['id'],
            },
        ),
        migrations.DeleteModel(
            name='NumberOne',
        ),
    ]
