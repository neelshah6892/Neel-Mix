import os

for path, directories, files in os.walk(''):
    for f in files:
        if f.endswith(".gz"):
            tar = tarfile.open(os.path.join(path, f), 'r:gz')
            tar.extractall(path=path)
            tar.close()