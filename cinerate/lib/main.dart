// This is the main.dart file which serves as the entry point for our Flutter app

import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(const MovieRatingApp());
}

class MovieRatingApp extends StatelessWidget {
  const MovieRatingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Rating App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black87,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchMovies();
  }

  Future<void> _fetchMovies() async {
    setState(() {
      isLoading = true;
    });

    // In a real app, you would fetch this data from an API
    // We're simulating a network request with Future.delayed
    await Future.delayed(const Duration(seconds: 1));
    
    setState(() {
      movies = [
        Movie(
          id: 1,
          title: 'Inception',
          posterAsset: 'assets/inception.jpg',
          overview: 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.',
          rating: 8.8,
          voteCount: 22731,
          releaseDate: '2010-07-16',
        ),
        Movie(
          id: 2,
          title: 'The Shawshank Redemption',
          posterAsset: 'assets/shawshank.jpg',
          overview: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
          rating: 9.3,
          voteCount: 20485,
          releaseDate: '1994-09-23',
        ),
        Movie(
          id: 3,
          title: 'Parasite',
          posterAsset: 'assets/parasite.jpg',
          overview: 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.',
          rating: 8.6,
          voteCount: 13251,
          releaseDate: '2019-05-30',
        ),
        Movie(
          id: 4,
          title: 'The Dark Knight',
          posterAsset: 'assets/dark_knight.jpg',
          overview: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
          rating: 9.0,
          voteCount: 24653,
          releaseDate: '2008-07-18',
        ),
        Movie(
          id: 5,
          title: 'Pulp Fiction',
          posterAsset: 'assets/pulp_fiction.jpg',
          overview: 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',
          rating: 8.9,
          voteCount: 21564,
          releaseDate: '1994-10-14',
        ),
      ];
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Ratings'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // We would implement search functionality here
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Search functionality coming soon')),
              );
            },
          ),
        ],
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return MovieCard(movie: movies[index]);
              },
            ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MovieDetailScreen(movie: movie),
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4),
                bottomLeft: Radius.circular(4),
              ),
              child: _buildPosterImage(movie.posterAsset, 100, 150),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 16),
                        Text(
                          ' ${movie.rating}/10',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' (${movie.voteCount} votes)',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Released: ${movie.releaseDate}',
                      style: const TextStyle(fontSize: 12),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      movie.overview,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovieDetailScreen extends StatefulWidget {
  final Movie movie;

  const MovieDetailScreen({Key? key, required this.movie}) : super(key: key);

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  double userRating = 0;
  final _reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movie.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero image
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: _buildPosterImage(widget.movie.posterAsset, double.infinity, 300),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.7),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.movie.title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber),
                          Text(
                            ' ${widget.movie.rating}/10',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            ' (${widget.movie.voteCount} votes)',
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'Released: ${widget.movie.releaseDate}',
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            // Overview
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Overview',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.movie.overview,
                    style: const TextStyle(fontSize: 16),
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // Rating section
                  const Text(
                    'Rate this movie',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 1; i <= 10; i++)
                        IconButton(
                          icon: Icon(
                            i <= userRating ? Icons.star : Icons.star_border,
                            color: Colors.amber,
                          ),
                          onPressed: () {
                            setState(() {
                              userRating = i.toDouble();
                            });
                          },
                        ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Your rating: ${userRating.toInt()}/10',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  
                  const SizedBox(height: 32),
                  
                  // Write review section
                  const Text(
                    'Write a Review',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _reviewController,
                    maxLines: 5,
                    decoration: const InputDecoration(
                      hintText: 'Share your thoughts about this movie...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (userRating == 0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Please rate the movie before submitting')),
                          );
                          return;
                        }
                        if (_reviewController.text.trim().isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Please write a review before submitting')),
                          );
                          return;
                        }
                        
                        // Here we would typically submit the review to an API
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Review submitted successfully!')),
                        );
                        _reviewController.clear();
                      },
                      child: const Text('Submit Review'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Helper function to build poster images
Widget _buildPosterImage(String imagePath, double width, double height) {
  // Check if this is a network URL or asset path
  if (imagePath.startsWith('http')) {
    // For network images (not used in this implementation but prepared for future)
    return Image.network(
      imagePath,
      width: width,
      height: height,
      fit: BoxFit.cover,
      // Add a placeholder for when image is loading
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Container(
          width: width,
          height: height,
          color: Colors.grey[800],
          child: Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded / 
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          ),
        );
      },
      // Add an error placeholder for when image fails to load
      errorBuilder: (context, error, stackTrace) {
        return Container(
          width: width,
          height: height,
          color: Colors.grey[800],
          child: const Center(
            child: Icon(
              Icons.movie,
              size: 50,
              color: Colors.white54,
            ),
          ),
        );
      },
    );
  } else {
    // For asset images (the approach we're using now)
    return Image.asset(
      imagePath,
      width: width,
      height: height,
      fit: BoxFit.cover,
      // Add an error placeholder for when image fails to load
      errorBuilder: (context, error, stackTrace) {
        return Container(
          width: width,
          height: height,
          color: Colors.grey[800],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.movie,
                  size: 50,
                  color: Colors.white54,
                ),
                const SizedBox(height: 8),
                Text(
                  imagePath.split('/').last.split('.').first,
                  style: const TextStyle(color: Colors.white54),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Movie {
  final int id;
  final String title;
  final String posterAsset;
  final String overview;
  final double rating;
  final int voteCount;
  final String releaseDate;

  Movie({
    required this.id,
    required this.title,
    required this.posterAsset,
    required this.overview,
    required this.rating,
    required this.voteCount,
    required this.releaseDate,
  });

  // This would be used if fetching from a real API
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['title'],
      posterAsset: json['poster_path'] != null
          ? 'https://image.tmdb.org/t/p/w500${json['poster_path']}'
          : 'assets/no_image.jpg',
      overview: json['overview'] ?? 'No overview available',
      rating: (json['vote_average'] ?? 0).toDouble(),
      voteCount: json['vote_count'] ?? 0,
      releaseDate: json['release_date'] ?? 'Unknown',
    );
  }
}