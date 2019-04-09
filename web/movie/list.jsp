<%-- 
    Document   : list
    Created on : 08/04/2019, 11:40:55 AM
    Author     : Photato
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="/header.html" %>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center">Online Movie Store (OMS)</h1>
            <hr />
            <a href="/" class="">Home</a>/Movies
            <hr />
            <form class="form-inline">
                <div class="form-group">
                  <label for="search">Search:</label>
                  <input type="search" class="form-control" id="search">
                </div>
                <div class="form-group">
                  <label for="filter">Genre</label>
                  <select class="form-control" name="genre">
                      <option value="">All</option>
                      <option value="Action">Action</option>
                      <option value="Adventure">Adventure</option>
                      <option value="Comedy">Comedy</option>
                      <option value="Crime">Crime</option>
                      <option value="Drama">Drama</option>
                      <option value="Fantasy">Fantasy</option>
                      <option value="Horror">Horror</option>
                      <option value="Thriller">Thriller</option>
                      <option value="Romance">Romance</option>
                  </select>
                </div>
                <input type="submit" class="btn btn-default" value="Search" />
            </form>
            <hr />
            <table class="table table-condensed table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Movie Title</th>
                        <th>Description</th>
                        <th>Stock</th>
                        <th>Price</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody id="movieList">
                    
                </tbody>
            </table>
        </div>
        <script>
            
            var movies = [
                {Id:1, Title:"Trains", Description:"A movie about Trains", Stock:4, Price:19.99, ActiveStatus:true},
                {Id:2, Title:"Boats", Description:"A movie about Boats", Stock:2, Price:18.99, ActiveStatus:true},
                {Id:3, Title:"Cars", Description:"A movie about Cars", Stock:8, Price:19.99, ActiveStatus:false},
                {Id:4, Title:"Cats", Description:"A movie about Cats", Stock:0, Price:17.99, ActiveStatus:false},
                {Id:5, Title:"Dogs", Description:"A movie about Dogs", Stock:31, Price:8.99, ActiveStatus:true}
            ];
        </script>
        <script type="text/babel">
            
            function MovieRecord(props){
                return (
                    <tr>
                        <td>{props.movie.Id}</td>
                        <td>{props.movie.Title}</td>
                        <td>{props.movie.Description}</td>
                        <td>{props.movie.Stock}</td>
                        <td>{props.movie.Price}</td>
                        <td>
                            <a href={"buy.jsp?movieid=" + props.movie.Url}>Buy</a> 
                        </td>
                    </tr>
                );
            }
            
            function MovieList() {
                return (
                        
                  
                    movies.forEach(function(movie){
                        <Welcome Id=movie.Id />
                    });
                  </div>
                );
              }
            
            var movieList;
            movies.forEach(function(movie){
                alert(movie.Id);
                var url = "buy.jsp?movieid="+movie.Id;
                movieList +=
                    <tr>
                        <td>{movie.Id}</td>
                        <td>{movie.Title}</td>
                        <td>{movie.Description}</td>
                        <td>{movie.Stock}</td>
                        <td>{movie.Price}</td>
                        <td>
                            <a href="{url}"> Buy</a> 
                        </td>
                    </tr>
                ;
            });
            
            ReactDOM.render(movieList,document.getElementById("movieList"));    
        </script>
    </body>
</html>
