//
//  ProductModel.swift
//  Grid
//
//  Created by Tekla on 12/18/23.
//

import Foundation

struct ProductList: Identifiable {
    var id = UUID()
    let products: [Product]
    let total, skip, limit: Int
}

struct Product: Identifiable {
    let id: Int
    let title, description: String
    let price: Int
    let discountPercentage, rating: Double
    let stock: Int
    let brand, category: String
    let thumbnail: String
    let images: [String]
}

struct MockItems {
    static let items: [Product] = [
        Product(
            id: 1,
            title: "Smartphone X",
            description: "High-performance smartphone with cutting-edge features.",
            price: 999,
            discountPercentage: 10.0,
            rating: 4.5,
            stock: 50,
            brand: "TechMaster",
            category: "Electronics",
            thumbnail: "smartphone_x_thumbnail",
            images: ["smartphone_x_image1", "smartphone_x_image2", "smartphone_x_image3"]
        ),
        Product(
            id: 2,
            title: "Running Shoes Pro",
            description: "Professional-grade running shoes for optimal comfort and performance.",
            price: 120,
            discountPercentage: 5.0,
            rating: 4.0,
            stock: 30,
            brand: "Sportify",
            category: "Footwear",
            thumbnail: "running_shoes_pro_thumbnail",
            images: ["running_shoes_pro_image1", "running_shoes_pro_image2", "running_shoes_pro_image3"]
        ),
        Product(
            id: 3,
            title: "Smart Home Hub",
            description: "Connect and control your smart devices seamlessly with this home hub.",
            price: 199,
            discountPercentage: 15.0,
            rating: 4.2,
            stock: 20,
            brand: "HomeTech",
            category: "Home Automation",
            thumbnail: "smart_home_hub_thumbnail",
            images: ["smart_home_hub_image1", "smart_home_hub_image2", "smart_home_hub_image3"]
        ),
        Product(
            id: 4,
            title: "Designer Chair",
            description: "Elegant and comfortable chair designed for modern living spaces.",
            price: 299,
            discountPercentage: 8.0,
            rating: 4.8,
            stock: 15,
            brand: "ChicLiving",
            category: "Furniture",
            thumbnail: "designer_chair_thumbnail",
            images: ["designer_chair_image1", "designer_chair_image2", "designer_chair_image3"]
        ),
        Product(
            id: 5,
            title: "Wireless Earbuds",
            description: "Immersive audio experience with these sleek and wireless earbuds.",
            price: 79,
            discountPercentage: 12.0,
            rating: 4.6,
            stock: 40,
            brand: "AudioFlow",
            category: "Electronics",
            thumbnail: "wireless_earbuds_thumbnail",
            images: ["wireless_earbuds_image1", "wireless_earbuds_image2", "wireless_earbuds_image3"]
        ),
        Product(
            id: 6,
            title: "Classic Watch",
            description: "Timeless design meets modern functionality in this classic timepiece.",
            price: 159,
            discountPercentage: 7.0,
            rating: 4.4,
            stock: 25,
            brand: "TimeCraft",
            category: "Accessories",
            thumbnail: "classic_watch_thumbnail",
            images: ["classic_watch_image1", "classic_watch_image2", "classic_watch_image3"]
        ),
        Product(
            id: 7,
            title: "Gaming Laptop",
            description: "Powerful gaming laptop with high-end graphics for an immersive gaming experience.",
            price: 1499,
            discountPercentage: 5.0,
            rating: 4.7,
            stock: 10,
            brand: "GameMaster",
            category: "Electronics",
            thumbnail: "gaming_laptop_thumbnail",
            images: ["gaming_laptop_image1", "gaming_laptop_image2", "gaming_laptop_image3"]
        ),
        Product(
            id: 8,
            title: "Fitness Tracker",
            description: "Track your fitness goals with precision using this advanced fitness tracker.",
            price: 89,
            discountPercentage: 15.0,
            rating: 4.3,
            stock: 35,
            brand: "FitTech",
            category: "Fitness",
            thumbnail: "fitness_tracker_thumbnail",
            images: ["fitness_tracker_image1", "fitness_tracker_image2", "fitness_tracker_image3"]
        ),
        Product(
            id: 9,
            title: "Premium Coffee Maker",
            description: "Brew your favorite coffee with this premium and stylish coffee maker.",
            price: 249,
            discountPercentage: 10.0,
            rating: 4.9,
            stock: 18,
            brand: "CafeLux",
            category: "Appliances",
            thumbnail: "coffee_maker_thumbnail",
            images: ["coffee_maker_image1", "coffee_maker_image2", "coffee_maker_image3"]
        ),
        Product(
            id: 10,
            title: "Travel Backpack",
            description: "Durable and spacious backpack designed for the modern traveler.",
            price: 79,
            discountPercentage: 8.0,
            rating: 4.5,
            stock: 28,
            brand: "ExploreGear",
            category: "Travel",
            thumbnail: "travel_backpack_thumbnail",
            images: ["travel_backpack_image1", "travel_backpack_image2", "travel_backpack_image3"]
        ),
        Product(
            id: 11,
            title: "Smart Thermostat",
            description: "Efficiently manage your home's temperature with this smart thermostat.",
            price: 129,
            discountPercentage: 12.0,
            rating: 4.2,
            stock: 22,
            brand: "ClimateControl",
            category: "Home Automation",
            thumbnail: "smart_thermostat_thumbnail",
            images: ["smart_thermostat_image1", "smart_thermostat_image2", "smart_thermostat_image3"]
        ),
        Product(
            id: 12,
            title: "Designer Sunglasses",
            description: "Protect your eyes in style with these fashionable designer sunglasses.",
            price: 179,
            discountPercentage: 10.0,
            rating: 4.7,
            stock: 15,
            brand: "SunStyle",
            category: "Accessories",
            thumbnail: "designer_sunglasses_thumbnail",
            images: ["designer_sunglasses_image1", "designer_sunglasses_image2", "designer_sunglasses_image3"]
        ),
        Product(
            id: 13,
            title: "Ultra-Thin Laptop",
            description: "Lightweight and powerful laptop for productivity on the go.",
            price: 1099,
            discountPercentage: 8.0,
            rating: 4.6,
            stock: 20,
            brand: "SlimTech",
            category: "Electronics",
            thumbnail: "ultra_thin_laptop_thumbnail",
            images: ["ultra_thin_laptop_image1", "ultra_thin_laptop_image2", "ultra_thin_laptop_image3"]
        ),
        Product(
            id: 14,
            title: "Professional Camera",
            description: "Capture stunning moments with this high-quality professional camera.",
            price: 1499,
            discountPercentage: 7.0,
            rating: 4.8,
            stock: 12,
            brand: "PhotoPro",
            category: "Photography",
            thumbnail: "professional_camera_thumbnail",
            images: ["professional_camera_image1", "professional_camera_image2", "professional_camera_image3"]
        ),
        Product(
            id: 15,
            title: "Wireless Charging Pad",
            description: "Charge your devices wirelessly with this sleek and efficient charging pad.",
            price: 59,
            discountPercentage: 15.0,
            rating: 4.4,
            stock: 30,
            brand: "ChargeHub",
            category: "Accessories",
            thumbnail: "wireless_charging_pad_thumbnail",
            images: ["wireless_charging_pad_image1", "wireless_charging_pad_image2", "wireless_charging_pad_image3"]
        )
    ]
}
