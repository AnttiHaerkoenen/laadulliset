# -*- coding: utf-8 -*-

import matplotlib.pyplot as plt
import pandas as pd
import networkx as nx

if __name__ == '__main__':
    data = pd.read_csv("verkosto.csv")
    G = nx.from_pandas_edgelist(data, "lahto", "tulo")
    centrality = nx.degree_centrality(G)
    eigen_centrality = nx.eigenvector_centrality(G)
    closeness = nx.closeness_centrality(G)
    betweenness_centrality = nx.betweenness_centrality(G)
    results = pd.DataFrame({
        "keskeisyys": centrality,
        "ominaisvektorikeskeisyys": eigen_centrality, 
        "läheisyyskeskeisyys": closeness, 
        "välillisyyskeskeisyys": betweenness_centrality,
        })
    results.to_csv("keskeisyys.csv")
    maksimit = {c: results[c].idxmax() for c in results.columns}
    print(maksimit)
    print(f"keskus: {nx.center(G)}")
    print(f"periferia: {nx.periphery(G)}")
    print(f"tiheys: {nx.density(G):.2f}")
    print(f"tärkein klikki: {nx.max_weight_clique(G, weight=None)} (Huom! Näitä voi olla useita)")
    nx.draw_networkx(G, with_labels=True)
    plt.show()
