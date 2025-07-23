from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from typing import List
import joblib

# ensure recommender.py is importable
from recommender import HybridRecommender

app = FastAPI()

# load the trained model (must be in same folder)
model: HybridRecommender = joblib.load("model.pkl")

class RecResponse(BaseModel):
    user_id: str
    recommendations: List[str]

@app.get("/recommend/{user_id}", response_model=RecResponse)
def recommend(user_id: str, n: int = 10):
    try:
        recs = model.recommend(user_id)[:n]
        return RecResponse(user_id=user_id, recommendations=[str(v) for v in recs])
    except KeyError:
        return RecResponse(user_id=user_id, recommendations=[])
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))