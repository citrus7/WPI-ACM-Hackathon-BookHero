
var express = require('express'),
    app = express(),
    pg = require('pg'),
    libgen = require('libgen');


// Config
// ---------------------------------------------------------------------

var pg_database_info = "postgres://postgres:@localhost/booksearch";
var libgen_mirror = "http://gen.lib.rus.ec";

app.use(express.static(__dirname + '/public'));

// HTML config
app.engine('html', require('ejs').renderFile);
app.set('view engine', 'html');

// ---------------------------------------------------------------------


// home page
app.get('/', function (req, res) {
  res.render('index.html');
});

// course ID -> list of books
app.get('/search_books', function(req, res) {
  var course_id = req.query.course;

  var client = new pg.Client(pg_database_info);
  client.connect(function(err) {
    if(err) { return console.error('could not connect to postgres', err); }

    client.query("SELECT * FROM books WHERE class='" + course_id + "';", function(err, result) {
      if(err) { return console.error('error running query', err); }

      var ret = [];
      for (var i = 0; i < result.rows.length; i++) {
        //console.log(result.rows[i].title + ' - ' + result.rows[i].author);
        ret.push({ 
          "title": result.rows[i].title, 
          "author": result.rows[i].author, 
          "isbn": result.rows[i].isbn,
          "edition": result.rows[i].edition,
          "isbn_searchable": result.rows[i].isbn_searchable 
        });
      }
      // console.log(result.rows.length);
      client.end();
      res.send(ret);
    });
  });
});

// search downloadable ebooks by title and author
app.get('/search_downloads_by_title', function(req, res) {
  var author_param = req.query.author;
  var found_book = false;
  var results = [];

  var libgen_params_title = {
    mirror: libgen_mirror,
    query: req.query.bookname, //'philosophy of religion',
    count: 10
  };

  // search title
  if (req.query.bookname) {
    libgen.search(libgen_params_title, function(err, data) {
      if (err) {
        res.send([]);
        return console.error(err);
      }
      var i = data.length;

      while (i--) {
        var year = parseInt(data[i].Year == "" ? 0 : data[i].Year);
        var book_item = {
          "title": data[i].Title,
          "author": data[i].Author,
          "year": year,
          "link": 'http://libgen.org/get.php?md5=' + data[i].MD5.toLowerCase(),
          "file": data[0].Extension,
          "score": year
        };
        if (author_param != "" && book_item.author.indexOf(author_param) > -1) book_item.score += 60;
        results.push(book_item);
      }
      results = results.sort(function(a,b) { return b.score - a.score; });
      var ret = [];
      ret.push(results[0]);
      res.send(ret);
    });
  }
});


// search downloadable ebook by ISBN
app.get('/search_download_by_isbn', function(req, res) {
  var results = [];

  var libgen_params_isbn = {
    mirror: libgen_mirror,
    query: req.query.isbn, search_in: "identifier"
  };

  // search ISBN
  if (req.query.isbn && req.query.isbn.length == 13) {
    libgen.search(libgen_params_isbn, function(err, data) {
      if (err) {
        res.send([]);
        return console.error(err);
      }
      var i = data.length;
      if (i > 0 && data[0]) {
        var year = parseInt(data[0].Year == "" ? 0 : data[0].Year);
        var book_item = {
          "title": data[0].Title,
          "author": data[0].Author,
          "year": year,
          "link": 'http://libgen.org/get.php?md5=' + data[0].MD5.toLowerCase(),
          "file": data[0].Extension,
          "score": year
        };
        //console.log(data[0]);
        results.push(book_item);
      }
      res.send(results);
    });
  }

});


var server = app.listen(3000, function () {
  var host = server.address().address
  var port = server.address().port

  console.log('Listening at http://%s:%s', host, port)

})

