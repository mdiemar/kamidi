document.addEventListener("DOMContentLoaded", () => {


    //Code für Movies->Index
    const searchElementMovies = document.getElementById("movie_title_search_field");
    //console.log(searchElementMovies)

    if (searchElementMovies !== null) {
      const search_movie = () => {
          const movies = document.getElementsByClassName("movie");
          for (const movie of movies) {
              if (!movie.children[0].innerText.toUpperCase().includes(searchElementMovies.value.toUpperCase())) {
                  movie.style.display="none";
              } else {
                  movie.style.display="";
              }
          };   
      };    
      searchElementMovies.addEventListener("input", search_movie );
    };


    //Code für Books->Index
    const searchElementBooks = document.getElementById("book_title_search_field");
    const searchElementAuthor = document.getElementById("book_author_search_field");
    //console.log(searchElementBooks)
    //console.log(searchElementAuthor)

    /* Ab hier die Such-Elemente auf books-page einzeln ausgewertet
    if (searchElementBooks !== null) {
      const search_book = () => {
          const books = document.getElementsByClassName("book");
          for (const book of books) {
              if (!book.children[0].innerText.toUpperCase().includes(searchElementBooks.value.toUpperCase())) {
                  book.style.display="none";
              } else {
                  book.style.display="";
              }
          };   
      };   
      searchElementBooks.addEventListener("input", search_book );
    };

    if (searchElementAuthor !== null) {
      const search_author = () => {
          const books = document.getElementsByClassName("book");
          for (const book of books) {
              if (!book.children[2].innerText.toUpperCase().includes(searchElementAuthor.value.toUpperCase())) {
                  book.style.display="none";
              } else {
                  book.style.display="";
              }
          };   
      };   
      searchElementAuthor.addEventListener("input", search_author );
    };*/

    // kombinierte Auswertung Such-Elemente auf book-page
    if (searchElementBooks !== null && searchElementAuthor !== null) {
      const search_book = () => {
          const books = document.getElementsByClassName("book");
          for (const book of books) {
              if (!book.children[0].innerText.toUpperCase().includes(searchElementBooks.value.toUpperCase()) ||
                  !book.children[2].innerText.toUpperCase().includes(searchElementAuthor.value.toUpperCase())) {
                  book.style.display="none";
              } else {
                  book.style.display="";
              }
          };   
      };   
      searchElementBooks.addEventListener("input", search_book );
      searchElementAuthor.addEventListener("input", search_book );
    };
    
  })