# required: pip install supabase
import os
from supabase import create_client, Client
import dotenv

dotenv.load_dotenv("../.env")

url: str = os.environ.get("SUPABASE_URL")
key: str = os.environ.get("SUPABASE_KEY")
supabase: Client = create_client(url, key)

payload = {
	"catA": 1,
	"catB": "b",
}
data, count = supabase.table("test_table").insert({"payload": payload}).execute()
print(data)
print(count)

response = supabase.table("test_table").select("*").execute()
print(response)

