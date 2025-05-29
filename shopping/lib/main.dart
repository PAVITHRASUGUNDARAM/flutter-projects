// File: main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
      routes: {
        '/cart': (context) => const CartPage(),
        '/orders': (context) => const OrdersPage(),
        '/product-details': (context) => const ProductDetailsPage(),
      },
    );
  }
}

// Enhanced Models
class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String imageAsset;
  final String category;
  final double rating;
  final int reviewCount;
  final List<String> features;
  final String brand;
  final bool inStock;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageAsset,
    required this.category,
    this.rating = 0.0,
    this.reviewCount = 0,
    this.features = const [],
    this.brand = '',
    this.inStock = true,
  });
}

class CartItem {
  final Product product;
  int quantity;

  CartItem({
    required this.product,
    this.quantity = 1,
  });
}

class Order {
  final String id;
  final List<CartItem> items;
  final double totalAmount;
  final DateTime dateTime;

  Order({
    required this.id,
    required this.items,
    required this.totalAmount,
    required this.dateTime,
  });
}

class Review {
  final String userName;
  final double rating;
  final String comment;
  final DateTime date;

  Review({
    required this.userName,
    required this.rating,
    required this.comment,
    required this.date,
  });
}

// Enhanced Provider/State Management
class ShopProvider extends ChangeNotifier {
  // Sample product data with enhanced details
  final List<Product> _products = [
    Product(
      id: 1,
      name: 'Blue T-Shirt',
      description: 'A nice blue t-shirt for casual wear. Made with 100% organic cotton for comfort and breathability.',
      price: 29.99,
      imageAsset: 'assets/images/tshirt.jpg',
      category: 'clothing',
      rating: 4.5,
      reviewCount: 120,
      features: ['100% Cotton', 'Machine Washable', 'Comfortable Fit', 'Eco-friendly'],
      brand: 'EcoStyle',
      inStock: true,
    ),
    Product(
      id: 2,
      name: 'Running Shoes',
      description: 'Comfortable shoes for your daily run with advanced cushioning and support for all types of terrain.',
      price: 89.99,
      imageAsset: 'assets/images/shoes.jpg',
      category: 'footwear',
      rating: 4.7,
      reviewCount: 230,
      features: ['Breathable Mesh', 'Rubber Sole', 'Cushioned Insole', 'Lightweight'],
      brand: 'SportStep',
      inStock: true,
    ),
    Product(
      id: 3,
      name: 'Headphones',
      description: 'High-quality wireless headphones with noise cancellation and exceptional sound quality for immersive listening experience.',
      price: 199.99,
      imageAsset: 'assets/images/headphones.jpg',
      category: 'electronics',
      rating: 4.8,
      reviewCount: 345,
      features: ['Noise Cancellation', '30h Battery Life', 'Bluetooth 5.0', 'Premium Sound'],
      brand: 'SoundPro',
      inStock: true,
    ),
    Product(
      id: 4,
      name: 'Sunglasses',
      description: 'Stylish sunglasses for summer with UV protection and polarized lenses to reduce glare and eye strain.',
      price: 59.99,
      imageAsset: 'assets/images/sunglasses.jpg',
      category: 'accessories',
      rating: 4.3,
      reviewCount: 89,
      features: ['UV Protection', 'Polarized Lenses', 'Lightweight Frame', 'Case Included'],
      brand: 'VisionStyle',
      inStock: true,
    ),
    Product(
      id: 5,
      name: 'Smart Watch',
      description: 'Track your fitness and stay connected with this feature-packed smartwatch. Includes heart rate monitoring and GPS.',
      price: 249.99,
      imageAsset: 'assets/images/smartwatch.jpg',
      category: 'electronics',
      rating: 4.6,
      reviewCount: 278,
      features: ['Heart Rate Monitor', 'GPS', 'Water Resistant', '7-day Battery'],
      brand: 'TechWear',
      inStock: true,
    ),
    Product(
      id: 6,
      name: 'Red Dress',
      description: 'Elegant dress for special occasions made with premium fabric for comfort and style.',
      price: 79.99,
      imageAsset: 'assets/images/dress.jpg',
      category: 'clothing',
      rating: 4.4,
      reviewCount: 156,
      features: ['Premium Fabric', 'Elegant Design', 'Comfortable Fit', 'Easy Care'],
      brand: 'FashionElite',
      inStock: true,
    ),
    Product(
      id: 7,
      name: 'Wireless Earbuds',
      description: 'Compact wireless earbuds with great sound quality and comfortable fit for all-day wear.',
      price: 129.99,
      imageAsset: 'assets/images/earbuds.jpg',
      category: 'electronics',
      rating: 4.7,
      reviewCount: 312,
      features: ['Touch Controls', '24h Battery Life', 'Water Resistant', 'Noise Isolation'],
      brand: 'AudioTech',
      inStock: true,
    ),
    Product(
      id: 8,
      name: 'Leather Wallet',
      description: 'Premium leather wallet with multiple compartments for cards, cash, and coins.',
      price: 49.99,
      imageAsset: 'assets/images/wallet.jpg',
      category: 'accessories',
      rating: 4.5,
      reviewCount: 98,
      features: ['Genuine Leather', 'Multiple Compartments', 'RFID Protection', 'Slim Design'],
      brand: 'LeatherCraft',
      inStock: true,
    ),
  ];

  // Sample reviews for products
  final Map<int, List<Review>> _reviews = {
    1: [
      Review(
        userName: 'John D.',
        rating: 5.0,
        comment: 'Great quality t-shirt, fits perfectly!',
        date: DateTime.now().subtract(const Duration(days: 5)),
      ),
      Review(
        userName: 'Sarah M.',
        rating: 4.0,
        comment: 'Nice material but a bit tight for me.',
        date: DateTime.now().subtract(const Duration(days: 10)),
      ),
    ],
    3: [
      Review(
        userName: 'Mike R.',
        rating: 5.0,
        comment: 'Amazing sound quality and battery life!',
        date: DateTime.now().subtract(const Duration(days: 2)),
      ),
      Review(
        userName: 'Lisa T.',
        rating: 4.5,
        comment: 'Very comfortable but a little pricey.',
        date: DateTime.now().subtract(const Duration(days: 7)),
      ),
    ],
  };

  List<CartItem> _cartItems = [];
  List<Order> _orders = [];
  String _currentFilter = 'all';
  double _minPrice = 0.0;
  double _maxPrice = 600.0;
  double _currentMinPrice = 0.0;
  double _currentMaxPrice = 600.0;
  String _sortBy = 'none'; // none, price_asc, price_desc, rating
  
  // Computed properties
  List<Product> get products {
    // Start with category filter
    List<Product> filteredProducts = _currentFilter == 'all'
        ? [..._products]
        : _products.where((product) => product.category == _currentFilter).toList();
    
    // Apply price filter
    filteredProducts = filteredProducts
        .where((product) => 
            product.price >= _currentMinPrice && 
            product.price <= _currentMaxPrice)
        .toList();
    
    // Apply sorting
    switch (_sortBy) {
      case 'price_asc':
        filteredProducts.sort((a, b) => a.price.compareTo(b.price));
        break;
      case 'price_desc':
        filteredProducts.sort((a, b) => b.price.compareTo(a.price));
        break;
      case 'rating':
        filteredProducts.sort((a, b) => b.rating.compareTo(a.rating));
        break;
      case 'newest':
        // In a real app, you would have a date field to sort by
        break;
    }
    
    return filteredProducts;
  }

  // Get price range for current filtered products
  void updatePriceRange() {
    if (_products.isEmpty) return;
    
    List<Product> categoryFiltered = _currentFilter == 'all' 
        ? [..._products] 
        : _products.where((product) => product.category == _currentFilter).toList();
    
    if (categoryFiltered.isEmpty) return;
    
    _minPrice = categoryFiltered.map((p) => p.price).reduce((a, b) => a < b ? a : b);
    _maxPrice = categoryFiltered.map((p) => p.price).reduce((a, b) => a > b ? a : b);
    
    // Round to nearest 10 for better UX
    _minPrice = (_minPrice / 10).floor() * 10.0;
    _maxPrice = ((_maxPrice / 10).ceil() * 10.0) + 9.99;
    
    // Only reset current values if they're outside the new range
    if (_currentMinPrice < _minPrice) _currentMinPrice = _minPrice;
    if (_currentMaxPrice > _maxPrice) _currentMaxPrice = _maxPrice;
    
    notifyListeners();
  }

  List<CartItem> get cartItems {
    return [..._cartItems];
  }

  List<Order> get orders {
    return [..._orders];
  }

  double get totalAmount {
    return _cartItems.fold(0.0, (sum, item) => sum + (item.product.price * item.quantity));
  }

  List<Review> getReviewsForProduct(int productId) {
    return _reviews[productId] ?? [];
  }

  void addReviewForProduct(int productId, Review review) {
    if (_reviews.containsKey(productId)) {
      _reviews[productId]!.add(review);
    } else {
      _reviews[productId] = [review];
    }
    notifyListeners();
  }

  void setFilter(String category) {
    _currentFilter = category;
    updatePriceRange();
    notifyListeners();
  }

  void setPriceRange(double min, double max) {
    _currentMinPrice = min;
    _currentMaxPrice = max;
    notifyListeners();
  }

  void setSortOption(String option) {
    _sortBy = option;
    notifyListeners();
  }

  Product getProductById(int id) {
    return _products.firstWhere((product) => product.id == id);
  }

  void addToCart(Product product) {
    final existingIndex = _cartItems.indexWhere((item) => item.product.id == product.id);
    if (existingIndex >= 0) {
      _cartItems[existingIndex].quantity += 1;
    } else {
      _cartItems.add(CartItem(product: product));
    }
    notifyListeners();
  }

  void removeFromCart(int productId) {
    _cartItems.removeWhere((item) => item.product.id == productId);
    notifyListeners();
  }

  void decreaseQuantity(int productId) {
    final existingIndex = _cartItems.indexWhere((item) => item.product.id == productId);
    if (existingIndex >= 0) {
      if (_cartItems[existingIndex].quantity > 1) {
        _cartItems[existingIndex].quantity -= 1;
      } else {
        _cartItems.removeAt(existingIndex);
      }
      notifyListeners();
    }
  }

  void increaseQuantity(int productId) {
    final existingIndex = _cartItems.indexWhere((item) => item.product.id == productId);
    if (existingIndex >= 0) {
      _cartItems[existingIndex].quantity += 1;
      notifyListeners();
    }
  }

  void placeOrder() {
    if (_cartItems.isEmpty) return;
    
    final order = Order(
      id: DateTime.now().toString(),
      items: [..._cartItems],
      totalAmount: totalAmount,
      dateTime: DateTime.now(),
    );
    
    _orders.add(order);
    _cartItems = [];
    notifyListeners();
  }
}

// Create a singleton instance of ShopProvider
final shopProvider = ShopProvider();

// Enhanced Home Page with Product Listing, Filtering and Sorting
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showFilterOptions = false;

  @override
  void initState() {
    super.initState();
    // Initialize price range when the app starts
    shopProvider.updatePriceRange();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Shop'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              setState(() {
                _showFilterOptions = !_showFilterOptions;
              });
            },
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).pushNamed('/cart');
                },
              ),
              AnimatedBuilder(
                animation: shopProvider,
                builder: (context, _) {
                  final itemCount = shopProvider.cartItems.fold(
                    0, (sum, item) => sum + item.quantity);
                  return itemCount > 0
                      ? Positioned(
                          right: 8,
                          top: 8,
                          child: Container(
                            padding: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            constraints: const BoxConstraints(
                              minWidth: 16,
                              minHeight: 16,
                            ),
                            child: Text(
                              '$itemCount',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      : const SizedBox();
                },
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag),
            onPressed: () {
              Navigator.of(context).pushNamed('/orders');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Category Filter
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8.0),
            child: AnimatedBuilder(
              animation: shopProvider,
              builder: (context, _) => Row(
                children: [
                  FilterChip(
                    label: const Text('All'),
                    selected: shopProvider._currentFilter == 'all',
                    onSelected: (_) => shopProvider.setFilter('all'),
                  ),
                  const SizedBox(width: 8),
                  FilterChip(
                    label: const Text('Clothing'),
                    selected: shopProvider._currentFilter == 'clothing',
                    onSelected: (_) => shopProvider.setFilter('clothing'),
                  ),
                  const SizedBox(width: 8),
                  FilterChip(
                    label: const Text('Footwear'),
                    selected: shopProvider._currentFilter == 'footwear',
                    onSelected: (_) => shopProvider.setFilter('footwear'),
                  ),
                  const SizedBox(width: 8),
                  FilterChip(
                    label: const Text('Electronics'),
                    selected: shopProvider._currentFilter == 'electronics',
                    onSelected: (_) => shopProvider.setFilter('electronics'),
                  ),
                  const SizedBox(width: 8),
                  FilterChip(
                    label: const Text('Accessories'),
                    selected: shopProvider._currentFilter == 'accessories',
                    onSelected: (_) => shopProvider.setFilter('accessories'),
                  ),
                ],
              ),
            ),
          ),
          
          // Advanced Filter and Sort Options
          if (_showFilterOptions)
            AnimatedBuilder(
              animation: shopProvider,
              builder: (context, _) => Card(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Filter & Sort',
                        style: TextStyle(
                          fontSize: 18, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text('Price Range:'),
                      RangeSlider(
                        min: shopProvider._minPrice,
                        max: shopProvider._maxPrice,
                        values: RangeValues(
                          shopProvider._currentMinPrice, 
                          shopProvider._currentMaxPrice
                        ),
                        divisions: ((shopProvider._maxPrice - shopProvider._minPrice) / 10).round(),
                        labels: RangeLabels(
                          '\$${shopProvider._currentMinPrice.toStringAsFixed(0)}',
                          '\$${shopProvider._currentMaxPrice.toStringAsFixed(0)}'
                        ),
                        onChanged: (RangeValues values) {
                          shopProvider.setPriceRange(values.start, values.end);
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\$${shopProvider._currentMinPrice.toStringAsFixed(0)}'),
                          Text('\$${shopProvider._currentMaxPrice.toStringAsFixed(0)}'),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Text('Sort By:'),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ChoiceChip(
                            label: const Text('None'),
                            selected: shopProvider._sortBy == 'none',
                            onSelected: (_) => shopProvider.setSortOption('none'),
                          ),
                          ChoiceChip(
                            label: const Text('Price ↑'),
                            selected: shopProvider._sortBy == 'price_asc',
                            onSelected: (_) => shopProvider.setSortOption('price_asc'),
                          ),
                          ChoiceChip(
                            label: const Text('Price ↓'),
                            selected: shopProvider._sortBy == 'price_desc',
                            onSelected: (_) => shopProvider.setSortOption('price_desc'),
                          ),
                          ChoiceChip(
                            label: const Text('Rating'),
                            selected: shopProvider._sortBy == 'rating',
                            onSelected: (_) => shopProvider.setSortOption('rating'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            child: const Text('Reset'),
                            onPressed: () {
                              shopProvider.setPriceRange(
                                shopProvider._minPrice, 
                                shopProvider._maxPrice
                              );
                              shopProvider.setSortOption('none');
                            },
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            child: const Text('Close'),
                            onPressed: () {
                              setState(() {
                                _showFilterOptions = false;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          
          // Products Grid with Filter applied
          Expanded(
            child: AnimatedBuilder(
              animation: shopProvider,
              builder: (context, _) {
                final filteredProducts = shopProvider.products;
                
                if (filteredProducts.isEmpty) {
                  return const Center(
                    child: Text('No products match your filters.'),
                  );
                }
                
                return GridView.builder(
                  padding: const EdgeInsets.all(10.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: filteredProducts.length,
                  itemBuilder: (ctx, i) => ProductItem(
                    product: filteredProducts[i],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Enhanced Product Item Widget
class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        children: [
          // Badge for out of stock items
          Stack(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                  child: Hero(
                    tag: 'product-${product.id}',
                    child: Image.asset(
                      product.imageAsset,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 120,
                      errorBuilder: (context, error, stackTrace) {
                        // Fallback if image fails to load
                        return Container(
                          color: Colors.grey,
                          height: 120,
                          child: Center(
                            child: Text(
                              product.name[0],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              if (!product.inStock)
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Out of Stock',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      '\$${product.price.toStringAsFixed(2)}',
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    // Display rating with stars
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 14,
                          color: Colors.amber[700],
                        ),
                        const SizedBox(width: 2),
                        Text(
                          product.rating.toStringAsFixed(1),
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  'Brand: ${product.brand}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // View detailed product page
                    IconButton(
                      icon: const Icon(Icons.visibility),
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          '/product-details',
                          arguments: product.id,
                        );
                      },
                    ),
                    // Add to cart button (disabled if out of stock)
                    IconButton(
                      icon: const Icon(Icons.add_shopping_cart),
                      onPressed: product.inStock ? () {
                        shopProvider.addToCart(product);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('${product.name} added to cart!'),
                            duration: const Duration(seconds: 1),
                          ),
                        );
                      } : null,
                      color: product.inStock ? Colors.blue : Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  final productId = ModalRoute.of(context)!.settings.arguments as int;
  final product = shopProvider.getProductById(productId);

  return Scaffold(
    appBar: AppBar(
      title: Text(product.name),
      actions: [
        Stack(
          alignment: Alignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.of(context).pushNamed('/cart');
              },
            ),
            AnimatedBuilder(
              animation: shopProvider,
              builder: (context, _) {
                final itemCount = shopProvider.cartItems.fold(
                  0, (sum, item) => sum + item.quantity);
                return itemCount > 0
                    ? Positioned(
                        right: 8,
                        top: 8,
                        child: Container(
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 16,
                            minHeight: 16,
                          ),
                          child: Text(
                            '$itemCount',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    : const SizedBox();
              },
            ),
          ],
        ),
      ],
    ),
    body: Column(
      children: [
        Hero(
          tag: 'product-${product.id}',
          child: Image.asset(
            product.imageAsset,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 18, color: Colors.green),
              ),
              const SizedBox(height: 10),
              Text(product.description),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: product.inStock
              ? () {
                  shopProvider.addToCart(product);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${product.name} added to cart')),
                  );
                }
              : null,
          child: Text(product.inStock ? 'Add to Cart' : 'Out of Stock'),
        ),
      ],
    ),
  );
}

// New Detailed Product Page
class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _reviewController = TextEditingController();
  double _userRating = 5.0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _reviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as int;
    final product = shopProvider.getProductById(productId);
    final reviews = shopProvider.getReviewsForProduct(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Column(
        children: [
          Hero(
            tag: 'product-${product.id}',
            child: Image.asset(
              product.imageAsset,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Overview'),
              Tab(text: 'Features'),
              Tab(text: 'Reviews'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(product.description),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: product.features
                        .map((feature) => ListTile(
                              leading: const Icon(Icons.check),
                              title: Text(feature),
                            ))
                        .toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: reviews.isEmpty
                            ? const Text('No reviews yet.')
                            : ListView.builder(
                                itemCount: reviews.length,
                                itemBuilder: (ctx, index) {
                                  final review = reviews[index];
                                  return ListTile(
                                    title: Text(review.userName),
                                    subtitle: Text(review.comment),
                                    trailing: Text(review.rating.toString()),
                                  );
                                },
                              ),
                      ),
                      const Divider(),
                      TextField(
                        controller: _reviewController,
                        decoration: const InputDecoration(labelText: 'Your Review'),
                      ),
                      Slider(
                        value: _userRating,
                        min: 1,
                        max: 5,
                        divisions: 4,
                        label: _userRating.toString(),
                        onChanged: (value) {
                          setState(() {
                            _userRating = value;
                          });
                        },
                      ),
                      ElevatedButton(
                        child: const Text('Submit Review'),
                        onPressed: () {
                          if (_reviewController.text.isEmpty) return;
                          final newReview = Review(
                            userName: 'Anonymous',
                            rating: _userRating,
                            comment: _reviewController.text,
                            date: DateTime.now(),
                          );
                          shopProvider.addReviewForProduct(productId, newReview);
                          _reviewController.clear();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartItems = shopProvider.cartItems;

    return Scaffold(
      appBar: AppBar(title: const Text('Your Cart')),
      body: cartItems.isEmpty
          ? const Center(child: Text('Your cart is empty.'))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (ctx, index) {
                      final item = cartItems[index];
                      return ListTile(
                        leading: Image.asset(
                          item.product.imageAsset,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Text(item.product.name),
                        subtitle: Text('Qty: ${item.quantity}'),
                        trailing: Text('\$${(item.product.price * item.quantity).toStringAsFixed(2)}'),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Total: \$${shopProvider.totalAmount.toStringAsFixed(2)}',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          shopProvider.placeOrder();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Order placed successfully!')),
                          );
                          Navigator.of(context).pop();
                        },
                        child: const Text('Place Order'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orders = shopProvider.orders;

    return Scaffold(
      appBar: AppBar(title: const Text('Your Orders')),
      body: orders.isEmpty
          ? const Center(child: Text('No orders yet.'))
          : ListView.builder(
              itemCount: orders.length,
              itemBuilder: (ctx, index) {
                final order = orders[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('Order #${index + 1}'),
                    subtitle: Text('${order.items.length} items'),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('\$${order.totalAmount.toStringAsFixed(2)}'),
                        Text(
                          '${order.dateTime.toLocal()}'.split(' ')[0],
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
