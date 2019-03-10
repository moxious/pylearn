from sklearn.externals import joblib
from sklearn import datasets
from sklearn import svm

# Load the Iris dataset
iris = datasets.load_iris()

# Train a classifier
classifier = svm.SVC()
classifier.fit(iris.data, iris.target)

# Export the classifier to a file
joblib.dump(classifier, 'model.joblib')
