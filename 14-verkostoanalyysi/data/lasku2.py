# -*- coding: utf-8 -*-

import matplotlib.pyplot as plt
import pandas as pd
import networkx as nx

if __name__ == '__main__':
    data = pd.read_csv("verkosto2.csv")
    G = nx.from_pandas_edgelist(data, "lahto", "tulo")
    nx.draw_networkx(G, with_labels=True)
    plt.show()
