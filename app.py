import streamlit as st
import pandas as pd

# Page Configuration

st.set_page_config(
    page_title="Restaurant Finder",
    page_icon="🍽️",
    layout="wide"
)

# Load data

def load_data():
    return pd.read_csv("data/cleaned/clean_data.csv")

df = load_data()

# Title

st.title("TripAdvisor Restaurant Analysis")
st.write(
    "Find restaurants that **offer vegetarian options**, "
    "**speak English**, and **serve Indian cuisine**."
)

# Sidebar filters

st.sidebar.header("🔍 Filters")

veg_only = st.sidebar.checkbox("Vegetarian Options", value=True)
english_only = st.sidebar.checkbox("English Speaking", value=True)
indian_only = st.sidebar.checkbox("Indian Cuisine", value=True)

search_query = st.sidebar.text_input(
    "🔎 Search Restaurant",
    placeholder="Type restaurant name..."
)

# Location Filters
filtered_df = df.copy()

# Country

if "country" in df.columns:
    countries = sorted(df["country"].dropna().unique())
    selected_countries = st.sidebar.multiselect("🌍 Country", countries)

    if selected_countries:
        filtered_df = filtered_df[
            filtered_df["country"].isin(selected_countries)
        ]

# Region
if "region" in df.columns:
    regions = sorted(filtered_df["region"].dropna().unique())
    selected_regions = st.sidebar.multiselect("🗺️ Region", regions)

    if selected_regions:
        filtered_df = filtered_df[
            filtered_df["region"].isin(selected_regions)
        ]

# City
if "city" in filtered_df.columns:
    cities = sorted(filtered_df["city"].dropna().unique())
    selected_cities = st.sidebar.multiselect("🏙️ City", cities)

    if selected_cities:
        filtered_df = filtered_df[
            filtered_df["city"].isin(selected_cities)
        ]

if veg_only and "has_vegetarian" in df.columns:
    filtered_df = filtered_df[filtered_df["has_vegetarian"] == True]

if english_only and "languages" in df.columns:
    filtered_df = filtered_df[
        filtered_df["languages"].str.contains("English", case=False, na=False)
    ]

if indian_only and "cuisines" in df.columns:
    filtered_df = filtered_df[
        filtered_df["cuisines"].str.contains("Indian", case=False, na=False)
    ]

# -----------------------------
# Apply search filter
# -----------------------------
if search_query:
    if "restaurant_name" in filtered_df.columns:
        filtered_df = filtered_df[
            filtered_df["restaurant_name"]
            .str.contains(search_query, case=False, na=False)
        ]
        
st.subheader(f"✅ {len(filtered_df)} Restaurants Found")

if filtered_df.empty:
    st.warning("No restaurants match the selected filters.")
else:
    display_cols = [
        col for col in [
            "restaurant_name",
            "country",
            "region",
            "city",
            "cuisines",
            "avg_rating",
            "price_range"
        ] if col in filtered_df.columns
    ]

    st.dataframe(
        filtered_df[display_cols].reset_index(drop=True),
        use_container_width=True
    )