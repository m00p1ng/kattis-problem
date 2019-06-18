s = input().split(' ')
ae = [x for x in s if 'ae' in x]

if len(ae)/len(s)*100 >= 40:
    print('dae ae ju traeligt va')
else:
    print('haer talar vi rikssvenska')
