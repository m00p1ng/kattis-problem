while True:
    try:
        domain = set(input().split(' ')[1:])
        codomain = set(input().split(' ')[1:])

        n = int(input())
        used_domain = set()
        used_codomain = set()
        relation = set()

        is_injective = True
        is_function = True

        for _ in range(n):
            x, _, y = input().split(' ')

            if y in used_codomain and (x, y) not in relation:
                is_injective = False

            if x in used_domain and (x, y) not in relation:
                is_function = False

            used_domain.add(x)
            used_codomain.add(y)
            relation.add((x, y))

        if is_function:
            is_surjective = codomain == used_codomain
            if is_surjective and is_injective:
                print("bijective")
            elif is_surjective:
                print("surjective")
            elif is_injective:
                print("injective")
            else:
                print("neither injective nor surjective")
        else:
            print("not a function")

    except EOFError:
        break
