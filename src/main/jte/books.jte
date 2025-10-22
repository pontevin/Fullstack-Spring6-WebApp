@import guru.springframework.spring6webapp.domain.Book

@param Iterable<Book> books

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book List (JTE)</title>
</head>
<body>
    <h1>Book List (JTE)</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Publisher</th>
        </tr>
        @for(Book book : books)
            <tr>
                <td>${book.getId()}</td>
                <td>${book.getTitle()}</td>
                <td>${book.getPublisher().getName()}</td>
            </tr>
        @endfor
    </table>
</body>
</html>