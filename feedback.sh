#!/bin/bash
# User Feedback Form

echo "=== User Feedback Form ==="
echo ""

echo "Enter your name: "
read name

echo "Enter your email: "
read email
if [[ ! "$email" =~ ^[^@]+@[^@]+\.[^@]+$ ]]; then
    echo "Invalid email address. Please enter a valid email."
    exit 1
fi

echo "Rate your experience (1-5): "
read rating
if ! [[ "$rating" =~ ^[1-5]$ ]]; then
    echo "Invalid rating. Please enter a number between 1 and 5."
    exit 1
fi

echo "Enter your feedback: "
read feedback

echo ""
echo "Thank you, $name! Your feedback has been recorded."
echo "---"
echo "Name: $name"
echo "Email: $email"
echo "Rating: $rating/5"
echo "Feedback: $feedback"
