#!/bin/bash

USER_ID=$(id -u)
GROUP_ID=$(id -g)

USER_ID=$USER_ID GROUP_ID=$GROUP_ID docker compose up -d