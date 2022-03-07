class MongoDatabase {
  static connect() async {
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    movieCollection = db.collection(MOVIE_COLLECTION);
  }
}
