<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="All-in-one online tools for images and PDFs. Convert, compress, edit and optimize your files for free.">
    <title>ToolKit Pro - Online Image & PDF Tools</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #4361ee;
            --primary-dark: #3a56d4;
            --secondary: #3f37c9;
            --accent: #f72585;
            --light: #f8f9fa;
            --dark: #212529;
            --gray: #6c757d;
            --light-gray: #e9ecef;
            --success: #4cc9f0;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: var(--dark);
            background-color: var(--light);
        }

        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Header Styles */
        header {
            background-color: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 0;
        }

        .logo {
            font-size: 28px;
            font-weight: 700;
            color: var(--primary);
            text-decoration: none;
            display: flex;
            align-items: center;
        }

        .logo i {
            margin-right: 10px;
            color: var(--accent);
        }

        .nav-links {
            display: flex;
            list-style: none;
        }

        .nav-links li {
            margin-left: 25px;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--dark);
            font-weight: 500;
            transition: color 0.3s;
            display: flex;
            align-items: center;
        }

        .nav-links a:hover {
            color: var(--primary);
        }

        .nav-links a i {
            margin-right: 8px;
        }

        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 24px;
            color: var(--dark);
            cursor: pointer;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(135deg, #4361ee 0%, #3f37c9 100%);
            color: white;
            padding: 80px 0;
            text-align: center;
        }

        .hero h1 {
            font-size: 3rem;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 1.2rem;
            max-width: 700px;
            margin: 0 auto 40px;
            opacity: 0.9;
        }

        .search-bar {
            max-width: 600px;
            margin: 0 auto;
            position: relative;
        }

        .search-bar input {
            width: 100%;
            padding: 15px 20px;
            border-radius: 50px;
            border: none;
            font-size: 16px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .search-bar button {
            position: absolute;
            right: 5px;
            top: 5px;
            background-color: var(--accent);
            color: white;
            border: none;
            border-radius: 50px;
            padding: 10px 25px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .search-bar button:hover {
            background-color: #e5177e;
        }

        /* Tools Categories */
        .categories {
            padding: 60px 0;
        }

        .section-title {
            text-align: center;
            margin-bottom: 50px;
        }

        .section-title h2 {
            font-size: 2.2rem;
            color: var(--dark);
            margin-bottom: 15px;
        }

        .section-title p {
            color: var(--gray);
            max-width: 700px;
            margin: 0 auto;
        }

        .category-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 30px;
        }
image-comprees.html
        .category-card {
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s, box-shadow 0.3s;
            text-decoration: none;
            color: var(--dark);
        }

        .category-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }

        .category-icon {
            height: 120px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 50px;
            color: white;
            background: linear-gradient(135deg, var(--primary) 0%, var(--secondary) 100%);
        }

        .category-content {
            padding: 20px;
        }

        .category-content h3 {
            margin-bottom: 10px;
            font-size: 1.3rem;
        }

        .category-content p {
            color: var(--gray);
            font-size: 0.9rem;
        }

        /* Popular Tools */
        .popular-tools {
            padding: 60px 0;
            background-color: var(--light-gray);
        }

        .tools-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 25px;
        }

        .tool-card {
            background-color: white;
            border-radius: 10px;
            padding: 25px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s;
        }

        .tool-card:hover {
            transform: translateY(-5px);
        }

        .tool-header {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        .tool-icon {
            width: 50px;
            height: 50px;
            background-color: var(--light);
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 15px;
            color: var(--primary);
            font-size: 20px;
        }

        .tool-info h3 {
            font-size: 1.2rem;
            margin-bottom: 5px;
        }

        .tool-info p {
            color: var(--gray);
            font-size: 0.9rem;
        }

        .tool-description {
            margin-bottom: 20px;
            color: var(--dark);
        }

        .tool-btn {
            display: inline-block;
            background-color: var(--primary);
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: 500;
            transition: background-color 0.3s;
        }

        .tool-btn:hover {
            background-color: var(--primary-dark);
        }

        /* Features Section */
        .features {
            padding: 60px 0;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
        }

        .feature-card {
            text-align: center;
            padding: 0 20px;
        }

        .feature-icon {
            font-size: 50px;
            color: var(--primary);
            margin-bottom: 20px;
        }

        .feature-card h3 {
            font-size: 1.5rem;
            margin-bottom: 15px;
        }

        .feature-card p {
            color: var(--gray);
        }

        /* Call to Action */
        .cta {
            background: linear-gradient(135deg, var(--primary) 0%, var(--secondary) 100%);
            color: white;
            padding: 80px 0;
            text-align: center;
            border-radius: 10px;
            margin: 60px 0;
        }

        .cta h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .cta p {
            font-size: 1.1rem;
            max-width: 700px;
            margin: 0 auto 40px;
            opacity: 0.9;
        }

        .cta-btns {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .btn {
            display: inline-block;
            padding: 15px 30px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
        }

        .btn-primary {
            background-color: white;
            color: var(--primary);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .btn-outline {
            border: 2px solid white;
            color: white;
        }

        .btn-outline:hover {
            background-color: white;
            color: var(--primary);
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        /* Footer */
        footer {
            background-color: var(--dark);
            color: white;
            padding: 60px 0 20px;
        }

        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 40px;
            margin-bottom: 40px;
        }

        .footer-column h3 {
            font-size: 1.2rem;
            margin-bottom: 20px;
            position: relative;
            padding-bottom: 10px;
        }

        .footer-column h3::after {
            content: '';
            position: absolute;
            left: 0;
            bottom: 0;
            width: 40px;
            height: 2px;
            background-color: var(--accent);
        }

        .footer-links {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 10px;
        }

        .footer-links a {
            color: #adb5bd;
            text-decoration: none;
            transition: color 0.3s;
        }

        .footer-links a:hover {
            color: white;
        }

        .social-links {
            display: flex;
            gap: 15px;
            margin-top: 20px;
        }

        .social-links a {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            color: white;
            transition: background-color 0.3s;
        }

        .social-links a:hover {
            background-color: var(--accent);
        }

        .copyright {
            text-align: center;
            padding-top: 20px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #adb5bd;
            font-size: 0.9rem;
        }

        /* Responsive Styles */
        @media (max-width: 992px) {
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .nav-links {
                display: none;
            }
            
            .mobile-menu-btn {
                display: block;
            }
        }

        @media (max-width: 768px) {
            .hero {
                padding: 60px 0;
            }
            
            .hero h1 {
                font-size: 2rem;
            }
            
            .hero p {
                font-size: 1rem;
            }
            
            .section-title h2 {
                font-size: 1.8rem;
            }
            
            .cta h2 {
                font-size: 2rem;
            }
            
            .cta-btns {
                flex-direction: column;
                align-items: center;
            }
            
            .btn {
                width: 100%;
                max-width: 250px;
                margin-bottom: 15px;
            }
        }

        @media (max-width: 576px) {
            .hero {
                padding: 50px 0;
            }
            
            .hero h1 {
                font-size: 1.8rem;
            }
            
            .search-bar input {
                padding: 12px 15px;
            }
            
            .search-bar button {
                padding: 8px 15px;
                font-size: 14px;
            }
            
            .category-grid {
                grid-template-columns: 1fr;
            }
            
            .tools-grid {
                grid-template-columns: 1fr;
            }
            
            .features-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container">
            <nav class="navbar">
                <a href="/" class="logo">
                    <i class="fas fa-tools"></i>
                    ToolKit Pro
                </a>
                
                <ul class="nav-links">
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#"><i class="fas fa-image"></i> Image Tools</a></li>
                    <li><a href="#"><i class="fas fa-file-pdf"></i> PDF Tools</a></li>
                    <li><a href="#"><i class="fas fa-cubes"></i> All Tools</a></li>
                    <li><a href="#"><i class="fas fa-info-circle"></i> About</a></li>
                </ul>
                
                <button class="mobile-menu-btn">
                    <i class="fas fa-bars"></i>
                </button>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h1>Powerful Online Tools for Images & PDFs</h1>
            <p>Convert, compress, edit and optimize your files with our free online tools. No installation required.</p>
            
            <div class="search-bar">
                <input type="text" placeholder="Search for tools (e.g. 'PDF to JPG', 'Image Compressor')">
                <button type="submit"><i class="fas fa-search"></i> Search</button>
            </div>
        </div>
    </section>

    <!-- Tools Categories -->
    <section class="categories">
        <div class="container">
            <div class="section-title">
                <h2>Browse by Category</h2>
                <p>Discover our collection of tools organized by categories</p>
            </div>
            
            <div class="category-grid">
                <a href="#" class="category-card">
                    <div class="category-icon">
                        <i class="fas fa-compress-alt"></i>
                    </div>
                    <div class="category-content">
                        <h3>Compression</h3>
                        <p>Reduce file size without losing quality</p>
                    </div>
                </a>
                
                <a href="#" class="category-card">
                    <div class="category-icon">
                        <i class="fas fa-exchange-alt"></i>
                    </div>
                    <div class="category-content">
                        <h3>Conversion</h3>
                        <p>Convert between different file formats</p>
                    </div>
                </a>
                
                <a href="#" class="category-card">
                    <div class="category-icon">
                        <i class="fas fa-edit"></i>
                    </div>
                    <div class="category-content">
                        <h3>Editing</h3>
                        <p>Modify and enhance your files</p>
                    </div>
                </a>
                
                <a href="#" class="category-card">
                    <div class="category-icon">
                        <i class="fas fa-file-pdf"></i>
                    </div>
                    <div class="category-content">
                        <h3>PDF Tools</h3>
                        <p>Everything for working with PDFs</p>
                    </div>
                </a>
                
                <a href="#" class="category-card">
                    <div class="category-icon">
                        <i class="fas fa-images"></i>
                    </div>
                    <div class="category-content">
                        <h3>Image Tools</h3>
                        <p>Tools for photos and graphics</p>
                    </div>
                </a>
                
                <a href="#" class="category-card">
                    <div class="category-icon">
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="category-content">
                        <h3>Security</h3>
                        <p>Protect and secure your files</p>
                    </div>
                </a>
            </div>
        </div>
    </section>

    <!-- Popular Tools -->
    <section class="popular-tools">
        <div class="container">
            <div class="section-title">
                <h2>Most Popular Tools</h2>
                <p>These are our most frequently used tools by visitors</p>
            </div>
            
            <div class="tools-grid">
                <div class="tool-card">
                    <div class="tool-header">
                        <div class="tool-icon">
                            <i class="fas fa-compress-arrows-alt"></i>
                        </div>
                        <div class="tool-info">
                            <h3>Image Compressor</h3>
                            <p>JPG, PNG, WebP</p>
                        </div>
                    </div>
                    <div class="tool-description">
                        Reduce image file size while maintaining quality. Perfect for websites and social media.
                    </div>
                    <a href="#" class="tool-btn">Use Tool</a>
                </div>
                
                <div class="tool-card">
                    <div class="tool-header">
                        <div class="tool-icon">
                            <i class="fas fa-file-pdf"></i>
                        </div>
                        <div class="tool-info">
                            <h3>PDF to JPG</h3>
                            <p>Convert PDF pages</p>
                        </div>
                    </div>
                    <div class="tool-description">
                        Convert PDF documents to high-quality JPG images. Extract pages as images easily.
                    </div>
                    <a href="#" class="tool-btn">Use Tool</a>
                </div>
                
                <div class="tool-card">
                    <div class="tool-header">
                        <div class="tool-icon">
                            <i class="fas fa-file-word"></i>
                        </div>
                        <div class="tool-info">
                            <h3>Word to PDF</h3>
                            <p>DOC, DOCX to PDF</p>
                        </div>
                    </div>
                    <div class="tool-description">
                        Convert Microsoft Word documents to PDF format while preserving formatting.
                    </div>
                    <a href="#" class="tool-btn">Use Tool</a>
                </div>
                
                <div class="tool-card">
                    <div class="tool-header">
                        <div class="tool-icon">
                            <i class="fas fa-image"></i>
                        </div>
                        <div class="tool-info">
                            <h3>Image Resizer</h3>
                            <p>JPG, PNG, GIF</p>
                        </div>
                    </div>
                    <div class="tool-description">
                        Resize your images to exact dimensions or scale them by percentage.
                    </div>
                    <a href="#" class="tool-btn">Use Tool</a>
                </div>
                
                <div class="tool-card">
                    <div class="tool-header">
                        <div class="tool-icon">
                            <i class="fas fa-file-archive"></i>
                        </div>
                        <div class="tool-info">
                            <h3>PDF Compressor</h3>
                            <p>Reduce PDF size</p>
                        </div>
                    </div>
                    <div class="tool-description">
                        Make your PDF files smaller without sacrificing quality. Perfect for email attachments.
                    </div>
                    <a href="#" class="tool-btn">Use Tool</a>
                </div>
                
                <div class="tool-card">
                    <div class="tool-header">
                        <div class="tool-icon">
                            <i class="fas fa-exchange-alt"></i>
                        </div>
                        <div class="tool-info">
                            <h3>JPG to PNG</h3>
                            <p>Convert image format</p>
                        </div>
                    </div>
                    <div class="tool-description">
                        Convert JPG images to PNG format with transparent background support.
                    </div>
                    <a href="#" class="tool-btn">Use Tool</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features">
        <div class="container">
            <div class="section-title">
                <h2>Why Choose Our Tools?</h2>
                <p>We provide the best online tools experience</p>
            </div>
            
            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-bolt"></i>
                    </div>
                    <h3>Fast Processing</h3>
                    <p>Our tools work directly in your browser for instant results without waiting for server processing.</p>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-lock"></i>
                    </div>
                    <h3>Secure & Private</h3>
                    <p>Your files never leave your computer. We don't upload them to any servers.</p>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-desktop"></i>
                    </div>
                    <h3>No Installation</h3>
                    <p>All tools work directly in your web browser. No software to download or install.</p>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-heart"></i>
                    </div>
                    <h3>Free to Use</h3>
                    <p>All our basic tools are completely free with no hidden charges or watermarks.</p>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-mobile-alt"></i>
                    </div>
                    <h3>Mobile Friendly</h3>
                    <p>Works perfectly on all devices including smartphones and tablets.</p>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-infinity"></i>
                    </div>
                    <h3>No Limits</h3>
                    <p>Process as many files as you need with no restrictions on usage.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Call to Action -->
    <div class="container">
        <section class="cta">
            <h2>Ready to Get Started?</h2>
            <p>Join thousands of satisfied users who trust our tools for their daily file conversion and editing needs.</p>
            <div class="cta-btns">
                <a href="#" class="btn btn-primary"><i class="fas fa-rocket"></i> Explore All Tools</a>
                <a href="#" class="btn btn-outline"><i class="fas fa-question-circle"></i> How It Works</a>
            </div>
        </section>
    </div>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-column">
                    <h3>ToolKit Pro</h3>
                    <p>Your all-in-one solution for image and PDF tools. Free, fast and secure online tools for all your needs.</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
                
                <div class="footer-column">
                    <h3>Image Tools</h3>
                    <ul class="footer-links">
                        <li><a href="#">Image Compressor</a></li>
                        <li><a href="#">Image Resizer</a></li>
                        <li><a href="#">Image Converter</a></li>
                        <li><a href="#">Background Remover</a></li>
                        <li><a href="#">Photo Editor</a></li>
                    </ul>
                </div>
                
                <div class="footer-column">
                    <h3>PDF Tools</h3>
                    <ul class="footer-links">
                        <li><a href="#">PDF Compressor</a></li>
                        <li><a href="#">PDF to Word</a></li>
                        <li><a href="#">PDF to JPG</a></li>
                        <li><a href="#">PDF Merger</a></li>
                        <li><a href="#">PDF Splitter</a></li>
                    </ul>
                </div>
                
                <div class="footer-column">
                    <h3>Company</h3>
                    <ul class="footer-links">
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Service</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                </div>
            </div>
            
            <div class="copyright">
                <p>&copy; 2023 ToolKit Pro. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        // Mobile menu toggle
        const mobileMenuBtn = document.querySelector('.mobile-menu-btn');
        const navLinks = document.querySelector('.nav-links');
        
        mobileMenuBtn.addEventListener('click', () => {
            navLinks.style.display = navLinks.style.display === 'flex' ? 'none' : 'flex';
        });
        
        // Close mobile menu when clicking on a link
        document.querySelectorAll('.nav-links a').forEach(link => {
            link.addEventListener('click', () => {
                if (window.innerWidth <= 992) {
                    navLinks.style.display = 'none';
                }
            });
        });
        
        // Responsive adjustments
        window.addEventListener('resize', () => {
            if (window.innerWidth > 992) {
                navLinks.style.display = 'flex';
            } else {
                navLinks.style.display = 'none';
            }
        });
    </script>
</body>
</html>
