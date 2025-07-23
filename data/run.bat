@echo off

CALL "D:\Programs\Anaconda\Scripts\activate.bat"

CALL conda activate ai

cd "D:\dev\csis290\data\api"

python recommender.py

pause