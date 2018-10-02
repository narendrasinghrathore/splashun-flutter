class PhotosParam {
    int page;
    int perPage;
    PhotoOrderBy orderBy;

}

enum PhotoOrderBy {
    Latest,
    Oldest,
    Popular
}