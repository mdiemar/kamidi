document.addEventListener("DOMContentLoaded", () => {


    //Code für Movies->Index
    const searchElement = document.getElementById("movie_title_search_field");

    const search_movie = () => {
        const movies = document.getElementsByClassName("movie");
        for (const movie of movies) {
            if (!movie.children[0].innerText.toUpperCase().includes(searchElement.value.toUpperCase())) {
                movie.style.display="none";
            } else {
                movie.style.display="";
            }
        }    
    };

    searchElement.addEventListener("input", search_movie );
    
  })