def open_file_and_return_list(file_path):
    list = []
    with open(file_path, 'r') as f:
        line = f.readline()
        while line:
            list.append(line)
            line = f.readline()
    return list

def clean_new_line(list):
    for i in range(len(list)):
        if "\n" in list[i]:
            list[i] = list[i].replace("\n", "")
    return list


if __name__ == "__main__":
    list1 = open_file_and_return_list(r"gen3gpazne_plugin_2-319-2")
    list2 = open_file_and_return_list(r"plugin_prod_nome_ver_ALF")
    list1 = clean_new_line(list1)
    list2 = clean_new_line(list2)
    diff = []
    for obj in list1:
        if obj not in list2:
            diff.append(obj)
    for obj in list2:
        if obj not in list1:
            diff.append(obj)

    print(diff)
