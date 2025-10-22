@import guru.springframework.spring6webapp.domain.Author

@param Iterable<Author> authors

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Author List (JTE)</title>
</head>
<body>
    <h1>Author List (JTE)</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Books</th>
        </tr>
        @for(Author author : authors)
            <tr>
                <td>${author.getId()}</td>
                <td>${author.getFirstName()}</td>
                <td>${author.getLastName()}</td>
                <td>${author.getBookTitles()}</td>
            </tr>
        @endfor
    </table>
</body>
</html>