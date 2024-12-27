import mysql.connector
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.naive_bayes import GaussianNB
from sklearn.metrics import accuracy_score, classification_report

# Connect to the database
conn = mysql.connector.connect(
    host="localhost",
    user="root",       # Replace with your MySQL username
    password="password",   # Replace with your MySQL password
    database="player_classification"
)

cursor = conn.cursor()

# Fetch data for training the Naive Bayes model
query = "SELECT matches_played, goals_scored, assists, minutes_played, classification FROM player_statistics"
cursor.execute(query)
data = cursor.fetchall()

# Close the database connection
cursor.close()
conn.close()

# Convert data into a suitable format for the model
# Assuming 'starter' is 1 and 'substitute' is 0 for classification
X = []
y = []
for row in data:
    matches_played, goals_scored, assists, minutes_played, classification = row
    X.append([matches_played, goals_scored, assists, minutes_played])
    y.append(1 if classification == 'starter' else 0)

X = np.array(X)
y = np.array(y)

# Split data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Initialize and train the Naive Bayes model
model = GaussianNB()
model.fit(X_train, y_train)

# Make predictions on the test set
y_pred = model.predict(X_test)
y_pred_train = model.predict(X_train)

# Evaluate the model
train_accuracy = accuracy_score(y_train, y_pred_train)
test_accuracy = accuracy_score(y_test, y_pred)

print(f"Training Accuracy: {train_accuracy * 100:.2f}%")
print(f"Testing Accuracy: {test_accuracy * 100:.2f}%")

# Classification Report
print("Classification Report:")
print(classification_report(y_test, y_pred, target_names=["substitute", "starter"]))

# Example prediction for a sample player
sample_player = np.array([[20, 5, 4, 1500]])  # Example stats: [matches_played, goals_scored, assists, minutes_played]
predicted_class = model.predict(sample_player)
print("\nPredicted classification for sample player (1=starter, 0=substitute):", predicted_class[0])

# Fixed player input for prediction (No user prompt)
print("\nUsing fixed player statistics for prediction:")

# Set fixed statistics for prediction
matches_played = 22
goals_scored = 7
assists = 5
minutes_played = 1800

# Format input for prediction
user_input = np.array([[matches_played, goals_scored, assists, minutes_played]])

# Predict classification for the fixed input data
user_prediction = model.predict(user_input)

# Output prediction
if user_prediction[0] == 1:
    print("\nPrediction: The player is a Starter.")
else:
    print("\nPrediction: The player is a Substitute.")
