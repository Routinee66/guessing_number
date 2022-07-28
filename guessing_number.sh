#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=guess --tuples-only --no-align -c"

# -- WELCOME FUNCTION, INPUT USERNAME AND DECIDE USER
WELCOME(){
  echo "Enter your username:"
  read USERNAME

  CHECK_USERNAME=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")

  # -- IF NEW USERNAME INPUTTED
  if [[ -z $CHECK_USERNAME ]]; then
    INSERT_USERNAME_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
  
  # -- IF USERNAME ALREADY INSIDE THE DATABASE
  else  
    BEST_GAME=$($PSQL "SELECT MAX(best_game) FROM users WHERE username = '$USERNAME'")
    GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username = '$USERNAME'")
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  fi
}

# -- INPUT NUMBER, MAIN FUNCTION OF PROGRAM
INPUT_NUMBER(){
  echo "Guess the secret number between 1 and 1000:"
  read NUMBER
  NUMBER_OF_GUESSES=1

  # -- IF INPUT NOT A NUMBER
  if [[ ! $NUMBER =~ ^[0-9]*$ ]]; then
    echo "That is not an integer, guess again:"

    # -- DOING RECURSIVE, RETURN TO INPUT NUMBER
    INPUT_NUMBER

  else

    # -- LOOPING UNTIL GET THE SECRET NUMBER
    while [[ $NUMBER != $SECRET_NUMBER ]]
    do

      # -- IF THE GUESS NUMBER IS HIGHER THAN THE SECRET NUMBER
      if [[ $NUMBER > $SECRET_NUMBER ]]; then
        echo "It's lower than that, guess again:" 
        # read NUMBER
      # else
      # -- IF THE GUESS NUMBER IS LOWER THAN THE SECRET NUMBER
      elif [[ $NUMBER < $SECRET_NUMBER ]]; then
        echo "It's higher than that, guess again:" 
      fi
      read NUMBER

      # -- INCREMENT THE GUESS NUMBER
      ((NUMBER_OF_GUESSES++))
    done

    # -- SECRET NUMBER FOUND
    echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
    ((GAMES_PLAYED++))
    UPDATE_GAMES_PLAYED=$($PSQL "UPDATE users SET games_played = $GAMES_PLAYED WHERE username = '$USERNAME'")
    
    # -- IF NUMBER OF GUESSES IF LESS THAN CURRENT BEST GAME OR IF CURRENT BEST IS NULL 
    if [[ -z $BEST_GAME || $NUMBER_OF_GUESSES < $BEST_GAME ]]; then
      UPDATE_BEST_GAMES=$($PSQL "UPDATE users SET best_game = $NUMBER_OF_GUESSES WHERE username = '$USERNAME'")
    fi
  fi
}

# -- GEENERATE SECRET NUMBER, ADD BY 1 TO MAKE IT ON RANGE 1 - 1000
SECRET_NUMBER=$((1 + ($RANDOM % 1000) ))

# ===============================================
# -- MAIN PROGRAM
WELCOME
INPUT_NUMBER
