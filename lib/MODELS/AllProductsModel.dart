
class AllProductsModel {
    AllProductsModel({
        this.products,
    });

    List<Product> products;

    factory AllProductsModel.fromJson(Map<String, dynamic> json) => AllProductsModel(
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
    };
}

class Product {
    Product({
        this.title,
        this.id,
        this.createdAt,
        this.updatedAt,
        this.type,
        this.status,
        this.downloadable,
        this.virtual,
        this.permalink,
        this.sku,
        this.price,
        this.regularPrice,
        this.salePrice,
        this.priceHtml,
        this.taxable,
        this.taxStatus,
        this.taxClass,
        this.managingStock,
        this.stockQuantity,
        this.inStock,
        this.backordersAllowed,
        this.backordered,
        this.soldIndividually,
        this.purchaseable,
        this.featured,
        this.visible,
        this.catalogVisibility,
        this.onSale,
        this.productUrl,
        this.buttonText,
        this.weight,
        this.dimensions,
        this.shippingRequired,
        this.shippingTaxable,
        this.shippingClass,
        this.shippingClassId,
        this.description,
        this.shortDescription,
        this.reviewsAllowed,
        this.averageRating,
        this.ratingCount,
        this.relatedIds,
        this.upsellIds,
        this.crossSellIds,
        this.parentId,
        this.categories,
        this.tags,
        this.images,
        this.featuredSrc,
        this.attributes,
        this.downloads,
        this.downloadLimit,
        this.downloadExpiry,
        this.downloadType,
        this.purchaseNote,
        this.totalSales,
        this.variations,
        this.parent,
        this.groupedProducts,
        this.menuOrder,
    });

    String title;
    int id;
    DateTime createdAt;
    DateTime updatedAt;
    Type type;
    Status status;
    bool downloadable;
    bool virtual;
    String permalink;
    String sku;
    String price;
    String regularPrice;
    dynamic salePrice;
    String priceHtml;
    bool taxable;
    TaxStatus taxStatus;
    String taxClass;
    bool managingStock;
    int stockQuantity;
    bool inStock;
    bool backordersAllowed;
    bool backordered;
    bool soldIndividually;
    bool purchaseable;
    bool featured;
    bool visible;
    CatalogVisibility catalogVisibility;
    bool onSale;
    String productUrl;
    String buttonText;
    String weight;
    Dimensions dimensions;
    bool shippingRequired;
    bool shippingTaxable;
    String shippingClass;
    dynamic shippingClassId;
    String description;
    String shortDescription;
    bool reviewsAllowed;
    String averageRating;
    int ratingCount;
    List<int> relatedIds;
    List<dynamic> upsellIds;
    List<dynamic> crossSellIds;
    int parentId;
    List<String> categories;
    List<String> tags;
    List<Image> images;
    String featuredSrc;
    List<dynamic> attributes;
    List<dynamic> downloads;
    int downloadLimit;
    int downloadExpiry;
    DownloadType downloadType;
    String purchaseNote;
    int totalSales;
    List<dynamic> variations;
    List<dynamic> parent;
    List<dynamic> groupedProducts;
    int menuOrder;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        title: json["title"],
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        type: typeValues.map[json["type"]],
        status: statusValues.map[json["status"]],
        downloadable: json["downloadable"],
        virtual: json["virtual"],
        permalink: json["permalink"],
        sku: json["sku"],
        price: json["price"],
        regularPrice: json["regular_price"],
        salePrice: json["sale_price"],
        priceHtml: json["price_html"],
        taxable: json["taxable"],
        taxStatus: taxStatusValues.map[json["tax_status"]],
        taxClass: json["tax_class"],
        managingStock: json["managing_stock"],
        stockQuantity: json["stock_quantity"] == null ? null : json["stock_quantity"],
        inStock: json["in_stock"],
        backordersAllowed: json["backorders_allowed"],
        backordered: json["backordered"],
        soldIndividually: json["sold_individually"],
        purchaseable: json["purchaseable"],
        featured: json["featured"],
        visible: json["visible"],
        catalogVisibility: catalogVisibilityValues.map[json["catalog_visibility"]],
        onSale: json["on_sale"],
        productUrl: json["product_url"],
        buttonText: json["button_text"],
        weight: json["weight"] == null ? null : json["weight"],
        dimensions: Dimensions.fromJson(json["dimensions"]),
        shippingRequired: json["shipping_required"],
        shippingTaxable: json["shipping_taxable"],
        shippingClass: json["shipping_class"],
        shippingClassId: json["shipping_class_id"],
        description: json["description"],
        shortDescription: json["short_description"],
        reviewsAllowed: json["reviews_allowed"],
        averageRating: json["average_rating"],
        ratingCount: json["rating_count"],
        relatedIds: List<int>.from(json["related_ids"].map((x) => x)),
        upsellIds: List<dynamic>.from(json["upsell_ids"].map((x) => x)),
        crossSellIds: List<dynamic>.from(json["cross_sell_ids"].map((x) => x)),
        parentId: json["parent_id"],
        categories: List<String>.from(json["categories"].map((x) => x)),
        tags: List<String>.from(json["tags"].map((x) => x)),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        featuredSrc: json["featured_src"],
        attributes: List<dynamic>.from(json["attributes"].map((x) => x)),
        downloads: List<dynamic>.from(json["downloads"].map((x) => x)),
        downloadLimit: json["download_limit"],
        downloadExpiry: json["download_expiry"],
        downloadType: downloadTypeValues.map[json["download_type"]],
        purchaseNote: json["purchase_note"],
        totalSales: json["total_sales"],
        variations: List<dynamic>.from(json["variations"].map((x) => x)),
        parent: List<dynamic>.from(json["parent"].map((x) => x)),
        groupedProducts: List<dynamic>.from(json["grouped_products"].map((x) => x)),
        menuOrder: json["menu_order"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "type": typeValues.reverse[type],
        "status": statusValues.reverse[status],
        "downloadable": downloadable,
        "virtual": virtual,
        "permalink": permalink,
        "sku": sku,
        "price": price,
        "regular_price": regularPrice,
        "sale_price": salePrice,
        "price_html": priceHtml,
        "taxable": taxable,
        "tax_status": taxStatusValues.reverse[taxStatus],
        "tax_class": taxClass,
        "managing_stock": managingStock,
        "stock_quantity": stockQuantity == null ? null : stockQuantity,
        "in_stock": inStock,
        "backorders_allowed": backordersAllowed,
        "backordered": backordered,
        "sold_individually": soldIndividually,
        "purchaseable": purchaseable,
        "featured": featured,
        "visible": visible,
        "catalog_visibility": catalogVisibilityValues.reverse[catalogVisibility],
        "on_sale": onSale,
        "product_url": productUrl,
        "button_text": buttonText,
        "weight": weight == null ? null : weight,
        "dimensions": dimensions.toJson(),
        "shipping_required": shippingRequired,
        "shipping_taxable": shippingTaxable,
        "shipping_class": shippingClass,
        "shipping_class_id": shippingClassId,
        "description": description,
        "short_description": shortDescription,
        "reviews_allowed": reviewsAllowed,
        "average_rating": averageRating,
        "rating_count": ratingCount,
        "related_ids": List<dynamic>.from(relatedIds.map((x) => x)),
        "upsell_ids": List<dynamic>.from(upsellIds.map((x) => x)),
        "cross_sell_ids": List<dynamic>.from(crossSellIds.map((x) => x)),
        "parent_id": parentId,
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "featured_src": featuredSrc,
        "attributes": List<dynamic>.from(attributes.map((x) => x)),
        "downloads": List<dynamic>.from(downloads.map((x) => x)),
        "download_limit": downloadLimit,
        "download_expiry": downloadExpiry,
        "download_type": downloadTypeValues.reverse[downloadType],
        "purchase_note": purchaseNote,
        "total_sales": totalSales,
        "variations": List<dynamic>.from(variations.map((x) => x)),
        "parent": List<dynamic>.from(parent.map((x) => x)),
        "grouped_products": List<dynamic>.from(groupedProducts.map((x) => x)),
        "menu_order": menuOrder,
    };
}

enum CatalogVisibility { VISIBLE }

final catalogVisibilityValues = EnumValues({
    "visible": CatalogVisibility.VISIBLE
});

class Dimensions {
    Dimensions({
        this.length,
        this.width,
        this.height,
        this.unit,
    });

    String length;
    String width;
    String height;
    Unit unit;

    factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        length: json["length"],
        width: json["width"],
        height: json["height"],
        unit: unitValues.map[json["unit"]],
    );

    Map<String, dynamic> toJson() => {
        "length": length,
        "width": width,
        "height": height,
        "unit": unitValues.reverse[unit],
    };
}

enum Unit { CM }

final unitValues = EnumValues({
    "cm": Unit.CM
});

enum DownloadType { STANDARD }

final downloadTypeValues = EnumValues({
    "standard": DownloadType.STANDARD
});

class Image {
    Image({
        this.id,
        this.createdAt,
        this.updatedAt,
        this.src,
        this.title,
        this.alt,
        this.position,
    });

    int id;
    DateTime createdAt;
    DateTime updatedAt;
    String src;
    String title;
    String alt;
    int position;

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        src: json["src"],
        title: json["title"],
        alt: json["alt"],
        position: json["position"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "src": src,
        "title": title,
        "alt": alt,
        "position": position,
    };
}

enum Status { PUBLISH }

final statusValues = EnumValues({
    "publish": Status.PUBLISH
});

enum TaxStatus { TAXABLE }

final taxStatusValues = EnumValues({
    "taxable": TaxStatus.TAXABLE
});

enum Type { SIMPLE }

final typeValues = EnumValues({
    "simple": Type.SIMPLE
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
