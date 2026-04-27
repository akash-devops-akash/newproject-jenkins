<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Premium E-Commerce</title>

    <!-- Fonts & Icons -->
    <link href="[fonts.googleapis.com](https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&display=swap)" rel="stylesheet">
    <link rel="stylesheet" href="[cdnjs.cloudflare.com](https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css)">

    <style>
        :root {
            --primary: #0f172a;
            --primary-light: #1e293b;
            --accent: #3b82f6;
            --accent-light: #60a5fa;
            --success: #10b981;
            --warning: #f59e0b;
            --error: #ef4444;
            --surface: #f8fafc;
            --card: #ffffff;
            --text: #1e293b;
            --text-light: #64748b;
            --border: #e2e8f0;
            --radius-lg: 16px;
            --radius-md: 12px;
            --radius-sm: 8px;
            --shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
            --shadow-lg: 0 20px 25px -5px rgba(0, 0, 0, 0.1);
            --gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html, body {
            height: 100%;
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', system-ui, sans-serif;
            background: var(--surface);
            color: var(--text);
            line-height: 1.6;
            -webkit-font-smoothing: antialiased;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* Header */
        header {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid var(--border);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .header-content {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 16px 0;
            gap: 32px;
        }

        .logo {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 28px;
            font-weight: 700;
            background: var(--gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .nav-main {
            display: flex;
            gap: 8px;
            flex: 1;
            justify-content: center;
        }

        .nav-link {
            padding: 12px 20px;
            border-radius: var(--radius-md);
            font-weight: 500;
            transition: all 0.2s ease;
            color: var(--text-light);
        }

        .nav-link:hover {
            background: var(--surface);
            color: var(--text);
        }

        .nav-link.active {
            background: var(--accent);
            color: white;
        }

        .search-bar {
            display: flex;
            align-items: center;
            background: var(--surface);
            border-radius: var(--radius-md);
            padding: 12px 16px;
            gap: 12px;
            min-width: 320px;
            border: 1px solid var(--border);
        }

        .search-bar input {
            border: none;
            background: none;
            outline: none;
            flex: 1;
            font-size: 14px;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 16px;
        }

        .action-btn {
            position: relative;
            padding: 10px;
            border-radius: var(--radius-md);
            color: var(--text-light);
            transition: all 0.2s ease;
        }

        .action-btn:hover {
            background: var(--surface);
            color: var(--text);
        }

        .badge {
            position: absolute;
            top: -2px;
            right: -2px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 600;
            min-width: 18px;
            height: 18px;
            border-radius: 9px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 20px;
            color: var(--text);
            cursor: pointer;
        }

        /* Hero Section */
        .hero {
            background: var(--gradient);
            color: white;
            padding: 120px 0;
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('data:image/svg+xml,<svg xmlns="[w3.org](http://www.w3.org/2000/svg)" viewBox="0 0 1000 100" fill="%23ffffff" opacity="0.1"><path d="M0,70 C250,20 350,110 500,70 C650,30 750,120 1000,70 L1000,100 L0,100 Z"/></svg>');
            background-size: cover;
        }

        .hero-content {
            position: relative;
            z-index: 2;
            text-align: center;
            max-width: 800px;
            margin: 0 auto;
        }

        .hero h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 56px;
            font-weight: 700;
            margin-bottom: 16px;
            line-height: 1.1;
        }

        .hero p {
            font-size: 18px;
            opacity: 0.9;
            margin-bottom: 32px;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 14px 32px;
            border-radius: var(--radius-md);
            font-weight: 600;
            text-decoration: none;
            transition: all 0.2s ease;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        .btn-primary {
            background: white;
            color: var(--primary);
        }

        .btn-secondary {
            background: rgba(255, 255, 255, 0.1);
            color: white;
            backdrop-filter: blur(10px);
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-lg);
        }

        /* Categories */
        .section {
            padding: 80px 0;
        }

        .section-header {
            text-align: center;
            margin-bottom: 48px;
        }

        .section-title {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 36px;
            font-weight: 700;
            margin-bottom: 12px;
        }

        .section-subtitle {
            color: var(--text-light);
            font-size: 18px;
        }

        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 24px;
        }

        .category-card {
            background: var(--card);
            border-radius: var(--radius-lg);
            padding: 32px 24px;
            text-align: center;
            transition: all 0.3s ease;
            border: 1px solid var(--border);
        }

        .category-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-lg);
            border-color: var(--accent-light);
        }

        .category-icon {
            width: 64px;
            height: 64px;
            background: var(--surface);
            border-radius: var(--radius-md);
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 16px;
            font-size: 24px;
            color: var(--accent);
        }

        .category-title {
            font-weight: 600;
            margin-bottom: 8px;
        }

        .category-desc {
            color: var(--text-light);
            font-size: 14px;
        }

        /* Products */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 24px;
        }

        .product-card {
            background: var(--card);
            border-radius: var(--radius-lg);
            overflow: hidden;
            transition: all 0.3s ease;
            border: 1px solid var(--border);
        }

        .product-card:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-lg);
        }

        .product-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .product-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: var(--accent);
            color: white;
            padding: 4px 12px;
            border-radius: var(--radius-sm);
            font-size: 12px;
            font-weight: 600;
        }

        .product-content {
            padding: 20px;
        }

        .product-title {
            font-weight: 600;
            margin-bottom: 8px;
            font-size: 16px;
        }

        .product-category {
            color: var(--text-light);
            font-size: 14px;
            margin-bottom: 12px;
        }

        .product-price {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-bottom: 16px;
        }

        .current-price {
            font-size: 20px;
            font-weight: 700;
            color: var(--primary);
        }

        .old-price {
            color: var(--text-light);
            text-decoration: line-through;
            font-size: 14px;
        }

        .product-rating {
            display: flex;
            align-items: center;
            gap: 4px;
            color: var(--warning);
            font-size: 14px;
        }

        .product-actions {
            display: flex;
            gap: 8px;
        }

        .add-to-cart {
            flex: 1;
            background: var(--primary);
            color: white;
            border: none;
            padding: 12px;
            border-radius: var(--radius-sm);
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .add-to-cart:hover {
            background: var(--primary-light);
        }

        .wishlist-btn {
            background: var(--surface);
            border: 1px solid var(--border);
            padding: 12px;
            border-radius: var(--radius-sm);
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .wishlist-btn:hover {
            background: var(--border);
        }

        /* Deal Section */
        .deal-section {
            background: var(--primary);
            color: white;
            border-radius: var(--radius-lg);
            overflow: hidden;
            margin: 48px 0;
        }

        .deal-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            align-items: center;
            gap: 48px;
        }

        .deal-image {
            width: 100%;
            height: 400px;
            object-fit: cover;
        }

        .deal-info {
            padding: 48px;
        }

        .deal-timer {
            display: flex;
            gap: 12px;
            margin: 24px 0;
        }

        .timer-unit {
            background: rgba(255, 255, 255, 0.1);
            padding: 16px;
            border-radius: var(--radius-md);
            text-align: center;
            min-width: 80px;
        }

        .timer-value {
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 4px;
        }

        .timer-label {
            font-size: 12px;
            opacity: 0.8;
        }

        /* Testimonials */
        .testimonials-container {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 12px 4px;
            scrollbar-width: none;
        }

        .testimonials-container::-webkit-scrollbar {
            display: none;
        }

        .testimonial-card {
            min-width: 360px;
            background: var(--card);
            padding: 32px;
            border-radius: var(--radius-lg);
            border: 1px solid var(--border);
        }

        .testimonial-rating {
            color: var(--warning);
            margin-bottom: 16px;
        }

        .testimonial-text {
            font-style: italic;
            margin-bottom: 20px;
            line-height: 1.6;
        }

        .testimonial-author {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .author-avatar {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            object-fit: cover;
        }

        /* Newsletter */
        .newsletter-section {
            background: var(--surface);
            border-radius: var(--radius-lg);
            padding: 64px 48px;
            text-align: center;
        }

        .newsletter-form {
            display: flex;
            gap: 12px;
            max-width: 480px;
            margin: 32px auto 0;
        }

        .newsletter-input {
            flex: 1;
            padding: 14px 20px;
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            font-size: 16px;
            outline: none;
        }

        /* Footer */
        footer {
            background: var(--primary);
            color: white;
            padding: 64px 0 32px;
        }

        .footer-content {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr;
            gap: 48px;
            margin-bottom: 48px;
        }

        .footer-brand {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 24px;
            font-weight: 700;
            margin-bottom: 16px;
            background: var(--gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .footer-desc {
            opacity: 0.8;
            line-height: 1.6;
            margin-bottom: 24px;
        }

        .social-links {
            display: flex;
            gap: 12px;
        }

        .social-link {
            width: 40px;
            height: 40px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: var(--radius-md);
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.2s ease;
        }

        .social-link:hover {
            background: var(--accent);
        }

        .footer-links {
            display: flex;
            flex-direction: column;
            gap: 12px;
        }

        .footer-link {
            opacity: 0.8;
            transition: opacity 0.2s ease;
        }

        .footer-link:hover {
            opacity: 1;
        }

        .footer-bottom {
            text-align: center;
            padding-top: 32px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            opacity: 0.6;
        }

        /* Responsive */
        @media (max-width: 1024px) {
            .deal-content {
                grid-template-columns: 1fr;
            }
            
            .footer-content {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (max-width: 768px) {
            .nav-main, .search-bar {
                display: none;
            }
            
            .mobile-menu-btn {
                display: block;
            }
            
            .hero h1 {
                font-size: 40px;
            }
            
            .footer-content {
                grid-template-columns: 1fr;
                gap: 32px;
            }
            
            .newsletter-form {
                flex-direction: column;
            }
        }

        @media (max-width: 480px) {
            .container {
                padding: 0 16px;
            }
            
            .hero {
                padding: 80px 0;
            }
            
            .hero h1 {
                font-size: 32px;
            }
            
            .section {
                padding: 60px 0;
            }
            
            .deal-timer {
                flex-wrap: wrap;
                justify-content: center;
            }
        }
    </style>
</head>

<body>
    <header>
        <div class="container">
            <div class="header-content">
                <button class="mobile-menu-btn">
                    <i class="fas fa-bars"></i>
                </button>
                
                <div class="logo">NexusShop</div>
                
                <nav class="nav-main">
                    <a href="#" class="nav-link active">Home</a>
                    <a href="#" class="nav-link">Categories</a>
                    <a href="#" class="nav-link">Trending</a>
                    <a href="#" class="nav-link">Deals</a>
                    <a href="#" class="nav-link">About</a>
                </nav>
                
                <div class="search-bar">
                    <i class="fas fa-search"></i>
                    <input type="text" placeholder="Search products...">
                </div>
                
                <div class="header-actions">
                    <button class="action-btn">
                        <i class="far fa-user"></i>
                    </button>
                    <button class="action-btn">
                        <i class="far fa-heart"></i>
                    </button>
                    <button class="action-btn">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="badge">0</span>
                    </button>
                </div>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero Section -->
        <section class="hero">
            <div class="container">
                <div class="hero-content">
                    <h1>Premium Collection</h1>
                    <p>Discover the latest trends in fashion, technology and accessories. Exclusive deals and free shipping on selected items.</p>
                    <div style="display: flex; gap: 16px; justify-content: center; flex-wrap: wrap;">
                        <button class="btn btn-primary">
                            Shop Now <i class="fas fa-arrow-right"></i>
                        </button>
                        <button class="btn btn-secondary">
                            Explore Deals
                        </button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Categories Section -->
        <section class="section">
            <div class="container">
                <div class="section-header">
                    <h2 class="section-title">Shop by Category</h2>
                    <p class="section-subtitle">Browse through our curated categories</p>
                </div>
                <div class="categories-grid" id="categoriesGrid"></div>
            </div>
        </section>

        <!-- Products Section -->
        <section class="section" style="background: var(--surface);">
            <div class="container">
                <div class="section-header">
                    <h2 class="section-title">Trending Products</h2>
                    <p class="section-subtitle">Popular picks this week</p>
                </div>
                <div class="products-grid" id="productsGrid"></div>
            </div>
        </section>

        <!-- Deal Section -->
        <section class="section">
            <div class="container">
                <div class="deal-section">
                    <div class="deal-content">
                        <img src="[images.unsplash.com](https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80)" 
                             alt="MacBook Air M2" class="deal-image">
                        <div class="deal-info">
                            <h3 style="font-size: 32px; margin-bottom: 16px;">MacBook Air M2</h3>
                            <p style="opacity: 0.9; margin-bottom: 24px;">Thin, light and powerful — now with M2 performance.</p>
                            
                            <div class="deal-timer">
                                <div class="timer-unit">
                                    <div class="timer-value" id="dealDays">0</div>
                                    <div class="timer-label">Days</div>
                                </div>
                                <div class="timer-unit">
                                    <div class="timer-value" id="dealHours">00</div>
                                    <div class="timer-label">Hours</div>
                                </div>
                                <div class="timer-unit">
                                    <div class="timer-value" id="dealMinutes">00</div>
                                    <div class="timer-label">Minutes</div>
                                </div>
                                <div class="timer-unit">
                                    <div class="timer-value" id="dealSeconds">00</div>
                                    <div class="timer-label">Seconds</div>
                                </div>
                            </div>
                            
                            <div style="display: flex; align-items: center; gap: 16px; margin-bottom: 24px;">
                                <div style="font-size: 28px; font-weight: 700;">$999</div>
                                <div style="opacity: 0.7; text-decoration: line-through;">$1,199</div>
                                <div style="background: var(--accent); padding: 4px 12px; border-radius: 20px; font-size: 14px; font-weight: 600;">
                                    -17% OFF
                                </div>
                            </div>
                            
                            <button class="btn btn-primary" style="background: white; color: var(--primary);">
                                Buy Now <i class="fas fa-bolt"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="section">
            <div class="container">
                <div class="section-header">
                    <h2 class="section-title">Customer Reviews</h2>
                    <p class="section-subtitle">What our customers say</p>
                </div>
                <div class="testimonials-container">
                    <div class="testimonial-card">
                        <div class="testimonial-rating">★★★★★</div>
                        <p class="testimonial-text">"Fast shipping and excellent customer support. The product exceeded my expectations!"</p>
                        <div class="testimonial-author">
                            <img src="[images.unsplash.com](https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80)" 
                                 alt="Ava Martin" class="author-avatar">
                            <div>
                                <div style="font-weight: 600;">Ava Martin</div>
                                <div style="opacity: 0.7; font-size: 14px;">Verified buyer</div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="testimonial-card">
                        <div class="testimonial-rating">★★★★☆</div>
                        <p class="testimonial-text">"Great selection and the checkout was smooth. Will definitely shop again!"</p>
                        <div class="testimonial-author">
                            <img src="[images.unsplash.com](https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80)" 
                                 alt="Michael Lee" class="author-avatar">
                            <div>
                                <div style="font-weight: 600;">Michael Lee</div>
                                <div style="opacity: 0.7; font-size: 14px;">Frequent buyer</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="section">
            <div class="container">
                <div class="newsletter-section">
                    <h2 style="font-size: 32px; margin-bottom: 16px;">Stay Updated</h2>
                    <p style="font-size: 18px; opacity: 0.8;">Subscribe to get exclusive offers and new arrivals</p>
                    <form class="newsletter-form">
                        <input type="email" placeholder="Enter your email" class="newsletter-input" required>
                        <button type="submit" class="btn btn-primary">Subscribe</button>
                    </form>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-content">
                <div>
                    <div class="footer-brand">NexusShop</div>
                    <p class="footer-desc">A modern e-commerce platform offering premium products with exceptional service and fast delivery.</p>
                    <div class="social-links">
                        <a href="#" class="social-link"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                
                <div>
                    <h3 style="margin-bottom: 20px; font-weight: 600;">Company</h3>
                    <div class="footer-links">
                        <a href="#" class="footer-link">About Us</a>
                        <a href="#" class="footer-link">Careers</a>
                        <a href="#" class="footer-link">Press</a>
                        <a href="#" class="footer-link">Blog</a>
                    </div>
                </div>
                
                <div>
                    <h3 style="margin-bottom: 20px; font-weight: 600;">Support</h3>
                    <div class="footer-links">
                        <a href="#" class="footer-link">Help Center</a>
                        <a href="#" class="footer-link">Shipping</a>
                        <a href="#" class="footer-link">Returns</a>
                        <a href="#" class="footer-link">Contact</a>
                    </div>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p>&copy; <span id="year"></span> NexusShop. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        // Keep the original JavaScript functionality with minor adjustments for the new UI
        const CATEGORIES = [{
                id: 'phones',
                name: 'Smartphones',
                icon: 'fa-mobile-alt'
            },
            {
                id: 'laptops',
                name: 'Laptops',
                icon: 'fa-laptop'
            },
            {
                id: 'clothing',
                name: 'Clothing',
                icon: 'fa-tshirt'
            },
            {
                id: 'gadgets',
                name: 'Gadgets',
                icon: 'fa-headphones'
            },
            {
                id: 'footwear',
                name: 'Footwear',
                icon: 'fa-shoe-prints'
            },
            {
                id: 'accessories',
                name: 'Accessories',
                icon: 'fa-watch'
            }
        ];

        const PRODUCTS = [{
                id: 1,
                title: 'iPhone 14 Pro Max',
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: 'New',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80)',
                category: 'phones'
            },
            {
                id: 2,
                title: 'MacBook Pro 14"',
                price: 1999,
                rating: 4,
                reviews: 86,
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80)',
                category: 'laptops'
            },
            {
                id: 3,
                title: 'Apple Watch Series 8',
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: '-25%',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80)',
                category: 'accessories'
            },
            {
                id: 4,
                title: 'Nike Air Max 270',
                price: 150,
                rating: 4,
                reviews: 53,
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80)',
                category: 'footwear'
            }
        ];

        let cartCount = 0;

        function renderCategories() {
            const grid = document.getElementById('categoriesGrid');
            grid.innerHTML = CATEGORIES.map(cat => `
                <div class="category-card">
                    <div class="category-icon">
                        <i class="fas ${cat.icon}"></i>
                    </div>
                    <div class="category-title">${cat.name}</div>
                    <div class="category-desc">Explore collection</div>
                </div>
            `).join('');
        }

        function renderProducts() {
            const grid = document.getElementById('productsGrid');
            grid.innerHTML = PRODUCTS.map(product => `
                <div class="product-card">
                    <div style="position: relative;">
                        <img src="${product.img}" alt="${product.title}" class="product-image">
                        ${product.badge ? `<div class="product-badge">${product.badge}</div>` : ''}
                    </div>
                    <div class="product-content">
                        <div class="product-title">${product.title}</div>
                        <div class="product-category">${product.category}</div>
                        <div class="product-price">
                            <div class="current-price">$${product.price}</div>
                            ${product.oldPrice ? `<div class="old-price">$${product.oldPrice}</div>` : ''}
                        </div>
                        <div class="product-rating">
                            ${'★'.repeat(product.rating)}${'☆'.repeat(5-product.rating)}
                            <span style="color: var(--text-light); margin-left: 8px;">(${product.reviews})</span>
                        </div>
                        <div class="product-actions">
                            <button class="add-to-cart" data-id="${product.id}">
                                Add to Cart
                            </button>
                            <button class="wishlist-btn">
                                <i class="far fa-heart"></i>
                            </button>
                        </div>
                    </div>
                </div>
            `).join('');

            // Add event listeners
            document.querySelectorAll('.add-to-cart').forEach(btn => {
                btn.addEventListener('click', () => {
                    cartCount++;
                    document.querySelector('.badge').textContent = cartCount;
                    
                    // Visual feedback
                    const originalText = btn.textContent;
                    btn.textContent = 'Added!';
                    btn.style.background = 'var(--success)';
                    setTimeout(() => {
                        btn.textContent = originalText;
                        btn.style.background = '';
                    }, 2000);
                });
            });
        }

        // Deal timer
        function setupDealTimer() {
            const target = new Date(Date.now() + 24 * 60 * 60 * 1000);
            
            function updateTimer() {
                const now = new Date();
                const diff = target - now;
                
                if (diff <= 0) {
                    clearInterval(timer);
                    return;
                }
                
                const days = Math.floor(diff / (1000 * 60 * 60 * 24));
                const hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                const minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
                const seconds = Math.floor((diff % (1000 * 60)) / 1000);
                
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = hours.toString().padStart(2, '0');
                document.getElementById('dealMinutes').textContent = minutes.toString().padStart(2, '0');
                document.getElementById('dealSeconds').textContent = seconds.toString().padStart(2, '0');
            }
            
            updateTimer();
            const timer = setInterval(updateTimer, 1000);
        }

        // Initialize
        document.addEventListener('DOMContentLoaded', () => {
            renderCategories();
            renderProducts();
            setupDealTimer();
            document.getElementById('year').textContent = new Date().getFullYear();
        });
    </script>
</body>
</html>
