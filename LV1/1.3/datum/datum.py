import datetime
import calendar

d, m = [int(i) for i in input().split(' ')]

date = datetime.datetime(2009, m, d)
print(calendar.day_name[date.weekday()])
