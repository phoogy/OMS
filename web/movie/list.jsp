<%-- 
    Document   : list
    Created on : 08/04/2019, 11:40:55 AM
    Author     : Photato
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="header.html" %>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center">Online Movie Store (OMS)</h1>
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
                  <input type="password" class="form-control" id="pwd">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
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
                <tbody>
                    
                </tbody>
            </table>
        </div>
    </body>
</html>
