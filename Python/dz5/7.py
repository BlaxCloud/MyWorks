import json

prib = {}
pr = {}
prib_value = 0
prib_value_aver = 0
i = 0
with open('for_7.txt', 'r') as file:
    for line in file:
        name, sobst, earn, waste = line.split()
        prib[name] = int(earn) - int(waste)
        if prib.setdefault(name) >= 0:
            prib_value = prib_value + prib.setdefault(name)
            i += 1
    if i != 0:
        prib_value_aver = prib_value / i
        print(f'Средняя прибыль \n {prib_value_aver}')
    else:
        print(f'Все компании работают в убыток')

    print(f'Прибыль каждой компании: \n {prib}')

with open('file_7.json', 'w') as write_js:
    json.dump(prib, write_js)

    js_str = json.dumps(prib)
    print(f'В json-файл выведено: \n {js_str}')