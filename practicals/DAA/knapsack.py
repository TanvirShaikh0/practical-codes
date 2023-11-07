def fractionalKnapsack(W, items):
    items.sort(key=lambda x: x[0] / x[1], reverse=True)
    final_value = 0.0

    for item in items:
        profit, weight = item
        take = min(W, weight)
        final_value += take * (profit / weight)
        W -= take

    return final_value


W = 50
items = [(40, 10), (100, 20), (120, 30)]
max_val = fractionalKnapsack(W, items)
print(max_val)