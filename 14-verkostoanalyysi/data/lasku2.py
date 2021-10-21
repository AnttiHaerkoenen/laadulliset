# -*- coding: utf-8 -*-

import matplotlib.pyplot as plt
import pandas as pd
import networkx as nx

if __name__ == '__main__':
    data = pd.read_csv("verkosto2.csv")
    G = nx.from_pandas_edgelist(data, "lahto", "tulo")
    centrality = nx.degree_centrality(G)
    eigen_centrality = nx.eigenvector_centrality(G)
    closeness = nx.closeness_centrality(G)
    betweenness_centrality = nx.betweenness_centrality(G)
    results = pd.DataFrame({
        "centrality": centrality,
        "eigenvector_centrality": eigen_centrality, 
        "closeness": closeness, 
        "betweenness_centrality": betweenness_centrality,
        })
    maksimit = [results[c].idxmax() for c in results.columns]
    print(maksimit)
    nx.draw_networkx(G, with_labels=True)
    plt.show()
