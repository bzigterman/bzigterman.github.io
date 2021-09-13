import statsapi


games = statsapi.schedule(start_date='04/01/2021',end_date='12/31/2021',team=145)

for x in games:
    print(x['summary'])
