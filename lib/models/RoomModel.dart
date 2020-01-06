// To parse this JSON data, do
//
//     final roomsModel = roomsModelFromJson(jsonString);

import 'dart:convert';

List<RoomsModel> roomsModelFromJson(String str) =>
    List<RoomsModel>.from(json.decode(str).map((x) => RoomsModel.fromJson(x)));

String roomsModelToJson(List<RoomsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RoomsModel {
  List<PostImage> postImages;
  String postTitle;
  String cityFee;
  String propertyPricePerWeek;
  String propertyPricePerMonth;
  String propertySize;
  String propertyRooms;
  PropertyState propertyState;
  String propertyZip;
  PropertyCountry propertyCountry;
  PropertyStatus propertyStatus;
  String propFeatured;
  String propertyPrice;
  PropertyLabel propertyLabel;
  String cleaningFee;
  CommentStatusEnum commentStatus;
  CommentStatusEnum pingStatus;
  String postName;
  SlideTemplate slideTemplate;
  String estatePropertyNoncename;
  String propertyAddress;
  PropertyCounty propertyCounty;
  String ajaxNonceAddPropertyActionCategory;
  NewpropertyCity newpropertyCity;
  String newpropertyCityParent;
  String ajaxNonceAddPropertyCity;
  NewpropertyArea newpropertyArea;
  String newpropertyAreaParent;
  String ajaxNonceAddPropertyArea;
  String excerpt;
  String advancedView;
  String newpropertyActionCategoryParent;
  String originalAuthor;
  String fetchAttachments;
  String wpnonce;
  String wpHttpReferer;
  String importId;
  CheckInHour checkInHour;
  String checkOutHour;
  OriginalPublish originalPublish;
  OriginalPublish publish;
  NewpropertyCategory newpropertyCategory;
  String newpropertyCategoryParent;
  String ajaxNonceAddPropertyCategory;
  NewpropertyActionCategory newpropertyActionCategory;
  String hiddenMm;
  String curMm;
  String hiddenJj;
  String curJj;
  String hiddenAa;
  String curAa;
  String hiddenHh;
  String curHh;
  String hiddenMn;
  String curMn;
  Visibility hiddenPostVisibility;
  Visibility visibility;
  String postPassword;
  String mm;
  String jj;
  String aa;
  String hh;
  String mn;
  String ss;
  String userId;
  Action action;
  Action originalaction;
  String postAuthor;
  PostType postType;
  Status originalPostStatus;
  String referredby;
  String wpOriginalHttpReferer;
  String autoDraft;
  String postId;
  String metaBoxOrderNonce;
  String closedpostboxesnonce;
  String samplepermalinknonce;
  String content;
  String wpPreview;
  Status hiddenPostStatus;
  Status postStatus;
  String hiddenPostPassword;
  String propertyBedrooms;
  String propertyBathrooms;
  String roomsModelGuestNo;
  EmbedVideoType embedVideoType;
  String embedVideoId;
  String checkIn;
  String checkOut;
  String optionalServices;
  String outdoorFacilities;
  String extraPeople;
  String cancellation;
  String propertyLatitude;
  String propertyLongitude;
  String propertyGoogleView;
  String googleCameraAngle;
  String pageCustomZoom;
  String kitchen;
  String internet;
  String smokingAllowed;
  String tv;
  String wheelchairAccessible;
  String elevatorInBuilding;
  String indoorFireplace;
  String heating;
  String essentials;
  String doorman;
  String pool;
  String washer;
  String hotTub;
  String dryer;
  String gym;
  String freeParkingOnPremises;
  String wirelessInternet;
  String petsAllowed;
  String familykidFriendly;
  String suitableForEvents;
  String nonSmoking;
  String phoneBoothlines;
  String projectors;
  String roomsModelBarRestaurant;
  String airConditioner;
  String roomsModelScannerPrinter;
  String fax;
  String propertyAgent;
  String propertyUser;
  String headerType;
  TransparentStatus transparentStatus;
  String minHeight;
  String maxHeight;
  String keepMin;
  String pageCustomImage;
  String revSlider;
  String wpestateSidebarNoncename;
  SidebarOption sidebarOption;
  SidebarSelect sidebarSelect;
  String postMimeType;
  String id;
  String postContent;
  String postExcerpt;
  String planTitle;
  String planDescription;
  String planImageAttach;
  String planImage;
  String planSize;
  String planRooms;
  String planBath;
  String planPrice;
  String advFilterSearchAction;
  String advFilterSearchCategory;
  String currentAdvFilterCity;
  String currentAdvFilterArea;
  OriginalPublish save;
  String addCommentNonce;
  String ajaxFetchListNonce;
  String lateCheckIn;
  Status status;
  String inlineEdit;
  String postView;
  String screen;
  String editDate;
  DateTime postDate;
  DateTime postDateGmt;
  String thumbnailId;
  String reviewBy10;
  String breakfastIncluded;
  String bookingDates;
  String reviewBy8;
  String cleaningFeePerDay;
  String cityFeePerDay;
  String pricePerWeekeend;
  String minDaysBooking;
  String extraPricePerGuest;
  String overloadGuest;
  String checkinChangeOver;
  String checkinCheckoutChangeOver;
  String propertyPriceBeforeLabel;
  String propertyPriceAfterLabel;
  String propertyTaxes;
  String securityDeposit;
  String earlyBirdPercent;
  String earlyBirdDays;
  String cityFeePercent;
  String familyKidFriendly;
  String phoneBoothLines;
  String barRestaurant;
  String scannerPrinter;
  PropertyStars propertyStars;
  String editLast;
  String editLock;
  String customPriceArray;
  String youEarn;
  String vcPostSettings;
  String uniqueCodeIca;
  String propDesc;
  String listingEdit;
  String country;
  String area;
  String city;
  String guests;
  String actionCategory;
  String category;
  String title;
  String guestNo;
  String wpOldSlug;
  String customPrice133;
  String propid;
  String customPrice137;
  String wpAttachedFile;

  RoomsModel({
    this.postImages,
    this.postTitle,
    this.cityFee,
    this.propertyPricePerWeek,
    this.propertyPricePerMonth,
    this.propertySize,
    this.propertyRooms,
    this.propertyState,
    this.propertyZip,
    this.propertyCountry,
    this.propertyStatus,
    this.propFeatured,
    this.propertyPrice,
    this.propertyLabel,
    this.cleaningFee,
    this.commentStatus,
    this.pingStatus,
    this.postName,
    this.slideTemplate,
    this.estatePropertyNoncename,
    this.propertyAddress,
    this.propertyCounty,
    this.ajaxNonceAddPropertyActionCategory,
    this.newpropertyCity,
    this.newpropertyCityParent,
    this.ajaxNonceAddPropertyCity,
    this.newpropertyArea,
    this.newpropertyAreaParent,
    this.ajaxNonceAddPropertyArea,
    this.excerpt,
    this.advancedView,
    this.newpropertyActionCategoryParent,
    this.originalAuthor,
    this.fetchAttachments,
    this.wpnonce,
    this.wpHttpReferer,
    this.importId,
    this.checkInHour,
    this.checkOutHour,
    this.originalPublish,
    this.publish,
    this.newpropertyCategory,
    this.newpropertyCategoryParent,
    this.ajaxNonceAddPropertyCategory,
    this.newpropertyActionCategory,
    this.hiddenMm,
    this.curMm,
    this.hiddenJj,
    this.curJj,
    this.hiddenAa,
    this.curAa,
    this.hiddenHh,
    this.curHh,
    this.hiddenMn,
    this.curMn,
    this.hiddenPostVisibility,
    this.visibility,
    this.postPassword,
    this.mm,
    this.jj,
    this.aa,
    this.hh,
    this.mn,
    this.ss,
    this.userId,
    this.action,
    this.originalaction,
    this.postAuthor,
    this.postType,
    this.originalPostStatus,
    this.referredby,
    this.wpOriginalHttpReferer,
    this.autoDraft,
    this.postId,
    this.metaBoxOrderNonce,
    this.closedpostboxesnonce,
    this.samplepermalinknonce,
    this.content,
    this.wpPreview,
    this.hiddenPostStatus,
    this.postStatus,
    this.hiddenPostPassword,
    this.propertyBedrooms,
    this.propertyBathrooms,
    this.roomsModelGuestNo,
    this.embedVideoType,
    this.embedVideoId,
    this.checkIn,
    this.checkOut,
    this.optionalServices,
    this.outdoorFacilities,
    this.extraPeople,
    this.cancellation,
    this.propertyLatitude,
    this.propertyLongitude,
    this.propertyGoogleView,
    this.googleCameraAngle,
    this.pageCustomZoom,
    this.kitchen,
    this.internet,
    this.smokingAllowed,
    this.tv,
    this.wheelchairAccessible,
    this.elevatorInBuilding,
    this.indoorFireplace,
    this.heating,
    this.essentials,
    this.doorman,
    this.pool,
    this.washer,
    this.hotTub,
    this.dryer,
    this.gym,
    this.freeParkingOnPremises,
    this.wirelessInternet,
    this.petsAllowed,
    this.familykidFriendly,
    this.suitableForEvents,
    this.nonSmoking,
    this.phoneBoothlines,
    this.projectors,
    this.roomsModelBarRestaurant,
    this.airConditioner,
    this.roomsModelScannerPrinter,
    this.fax,
    this.propertyAgent,
    this.propertyUser,
    this.headerType,
    this.transparentStatus,
    this.minHeight,
    this.maxHeight,
    this.keepMin,
    this.pageCustomImage,
    this.revSlider,
    this.wpestateSidebarNoncename,
    this.sidebarOption,
    this.sidebarSelect,
    this.postMimeType,
    this.id,
    this.postContent,
    this.postExcerpt,
    this.planTitle,
    this.planDescription,
    this.planImageAttach,
    this.planImage,
    this.planSize,
    this.planRooms,
    this.planBath,
    this.planPrice,
    this.advFilterSearchAction,
    this.advFilterSearchCategory,
    this.currentAdvFilterCity,
    this.currentAdvFilterArea,
    this.save,
    this.addCommentNonce,
    this.ajaxFetchListNonce,
    this.lateCheckIn,
    this.status,
    this.inlineEdit,
    this.postView,
    this.screen,
    this.editDate,
    this.postDate,
    this.postDateGmt,
    this.thumbnailId,
    this.reviewBy10,
    this.breakfastIncluded,
    this.bookingDates,
    this.reviewBy8,
    this.cleaningFeePerDay,
    this.cityFeePerDay,
    this.pricePerWeekeend,
    this.minDaysBooking,
    this.extraPricePerGuest,
    this.overloadGuest,
    this.checkinChangeOver,
    this.checkinCheckoutChangeOver,
    this.propertyPriceBeforeLabel,
    this.propertyPriceAfterLabel,
    this.propertyTaxes,
    this.securityDeposit,
    this.earlyBirdPercent,
    this.earlyBirdDays,
    this.cityFeePercent,
    this.familyKidFriendly,
    this.phoneBoothLines,
    this.barRestaurant,
    this.scannerPrinter,
    this.propertyStars,
    this.editLast,
    this.editLock,
    this.customPriceArray,
    this.youEarn,
    this.vcPostSettings,
    this.uniqueCodeIca,
    this.propDesc,
    this.listingEdit,
    this.country,
    this.area,
    this.city,
    this.guests,
    this.actionCategory,
    this.category,
    this.title,
    this.guestNo,
    this.wpOldSlug,
    this.customPrice133,
    this.propid,
    this.customPrice137,
    this.wpAttachedFile,
  });

  factory RoomsModel.fromJson(Map<String, dynamic> json) => RoomsModel(
        postImages: json["post_images"] == null
            ? null
            : List<PostImage>.from(
                json["post_images"].map((x) => PostImage.fromJson(x))),
        postTitle: json["post_title"] == null ? null : json["post_title"],
        cityFee: json["city_fee"] == null ? null : json["city_fee"],
        propertyPricePerWeek: json["property_price_per_week"] == null
            ? null
            : json["property_price_per_week"],
        propertyPricePerMonth: json["property_price_per_month"] == null
            ? null
            : json["property_price_per_month"],
        propertySize:
            json["property_size"] == null ? null : json["property_size"],
        propertyRooms:
            json["property_rooms"] == null ? null : json["property_rooms"],
        propertyState: json["property_state"] == null
            ? null
            : propertyStateValues.map[json["property_state"]],
        propertyZip: json["property_zip"] == null ? null : json["property_zip"],
        propertyCountry: json["property_country"] == null
            ? null
            : propertyCountryValues.map[json["property_country"]],
        propertyStatus: json["property_status"] == null
            ? null
            : propertyStatusValues.map[json["property_status"]],
        propFeatured:
            json["prop_featured"] == null ? null : json["prop_featured"],
        propertyPrice:
            json["property_price"] == null ? null : json["property_price"],
        propertyLabel: json["property_label"] == null
            ? null
            : propertyLabelValues.map[json["property_label"]],
        cleaningFee: json["cleaning_fee"] == null ? null : json["cleaning_fee"],
        commentStatus: json["comment_status"] == null
            ? null
            : commentStatusEnumValues.map[json["comment_status"]],
        pingStatus: json["ping_status"] == null
            ? null
            : commentStatusEnumValues.map[json["ping_status"]],
        postName: json["post_name"] == null ? null : json["post_name"],
        slideTemplate: json["slide_template"] == null
            ? null
            : slideTemplateValues.map[json["slide_template"]],
        estatePropertyNoncename: json["estate_property_noncename"] == null
            ? null
            : json["estate_property_noncename"],
        propertyAddress:
            json["property_address"] == null ? null : json["property_address"],
        propertyCounty: json["property_county"] == null
            ? null
            : propertyCountyValues.map[json["property_county"]],
        ajaxNonceAddPropertyActionCategory:
            json["_ajax_nonce-add-property_action_category"] == null
                ? null
                : json["_ajax_nonce-add-property_action_category"],
        newpropertyCity: json["newproperty_city"] == null
            ? null
            : newpropertyCityValues.map[json["newproperty_city"]],
        newpropertyCityParent: json["newproperty_city_parent"] == null
            ? null
            : json["newproperty_city_parent"],
        ajaxNonceAddPropertyCity: json["_ajax_nonce-add-property_city"] == null
            ? null
            : json["_ajax_nonce-add-property_city"],
        newpropertyArea: json["newproperty_area"] == null
            ? null
            : newpropertyAreaValues.map[json["newproperty_area"]],
        newpropertyAreaParent: json["newproperty_area_parent"] == null
            ? null
            : json["newproperty_area_parent"],
        ajaxNonceAddPropertyArea: json["_ajax_nonce-add-property_area"] == null
            ? null
            : json["_ajax_nonce-add-property_area"],
        excerpt: json["excerpt"] == null ? null : json["excerpt"],
        advancedView:
            json["advanced_view"] == null ? null : json["advanced_view"],
        newpropertyActionCategoryParent:
            json["newproperty_action_category_parent"] == null
                ? null
                : json["newproperty_action_category_parent"],
        originalAuthor:
            json["original_author"] == null ? null : json["original_author"],
        fetchAttachments: json["fetch_attachments"] == null
            ? null
            : json["fetch_attachments"],
        wpnonce: json["_wpnonce"] == null ? null : json["_wpnonce"],
        wpHttpReferer:
            json["_wp_http_referer"] == null ? null : json["_wp_http_referer"],
        importId: json["import_id"] == null ? null : json["import_id"],
        checkInHour: json["check-in-hour"] == null
            ? null
            : checkInHourValues.map[json["check-in-hour"]],
        checkOutHour:
            json["check-out-hour"] == null ? null : json["check-out-hour"],
        originalPublish: json["original_publish"] == null
            ? null
            : originalPublishValues.map[json["original_publish"]],
        publish: json["publish"] == null
            ? null
            : originalPublishValues.map[json["publish"]],
        newpropertyCategory: json["newproperty_category"] == null
            ? null
            : newpropertyCategoryValues.map[json["newproperty_category"]],
        newpropertyCategoryParent: json["newproperty_category_parent"] == null
            ? null
            : json["newproperty_category_parent"],
        ajaxNonceAddPropertyCategory:
            json["_ajax_nonce-add-property_category"] == null
                ? null
                : json["_ajax_nonce-add-property_category"],
        newpropertyActionCategory: json["newproperty_action_category"] == null
            ? null
            : newpropertyActionCategoryValues
                .map[json["newproperty_action_category"]],
        hiddenMm: json["hidden_mm"] == null ? null : json["hidden_mm"],
        curMm: json["cur_mm"] == null ? null : json["cur_mm"],
        hiddenJj: json["hidden_jj"] == null ? null : json["hidden_jj"],
        curJj: json["cur_jj"] == null ? null : json["cur_jj"],
        hiddenAa: json["hidden_aa"] == null ? null : json["hidden_aa"],
        curAa: json["cur_aa"] == null ? null : json["cur_aa"],
        hiddenHh: json["hidden_hh"] == null ? null : json["hidden_hh"],
        curHh: json["cur_hh"] == null ? null : json["cur_hh"],
        hiddenMn: json["hidden_mn"] == null ? null : json["hidden_mn"],
        curMn: json["cur_mn"] == null ? null : json["cur_mn"],
        hiddenPostVisibility: json["hidden_post_visibility"] == null
            ? null
            : visibilityValues.map[json["hidden_post_visibility"]],
        visibility: json["visibility"] == null
            ? null
            : visibilityValues.map[json["visibility"]],
        postPassword:
            json["post_password"] == null ? null : json["post_password"],
        mm: json["mm"] == null ? null : json["mm"],
        jj: json["jj"] == null ? null : json["jj"],
        aa: json["aa"] == null ? null : json["aa"],
        hh: json["hh"] == null ? null : json["hh"],
        mn: json["mn"] == null ? null : json["mn"],
        ss: json["ss"] == null ? null : json["ss"],
        userId: json["user_id"] == null ? null : json["user_id"],
        action:
            json["action"] == null ? null : actionValues.map[json["action"]],
        originalaction: json["originalaction"] == null
            ? null
            : actionValues.map[json["originalaction"]],
        postAuthor: json["post_author"] == null ? null : json["post_author"],
        postType: json["post_type"] == null
            ? null
            : postTypeValues.map[json["post_type"]],
        originalPostStatus: json["original_post_status"] == null
            ? null
            : statusValues.map[json["original_post_status"]],
        referredby: json["referredby"] == null ? null : json["referredby"],
        wpOriginalHttpReferer: json["_wp_original_http_referer"] == null
            ? null
            : json["_wp_original_http_referer"],
        autoDraft: json["auto_draft"] == null ? null : json["auto_draft"],
        postId: json["post_id"] == null ? null : json["post_id"],
        metaBoxOrderNonce: json["meta-box-order-nonce"] == null
            ? null
            : json["meta-box-order-nonce"],
        closedpostboxesnonce: json["closedpostboxesnonce"] == null
            ? null
            : json["closedpostboxesnonce"],
        samplepermalinknonce: json["samplepermalinknonce"] == null
            ? null
            : json["samplepermalinknonce"],
        content: json["content"] == null ? null : json["content"],
        wpPreview: json["wp-preview"] == null ? null : json["wp-preview"],
        hiddenPostStatus: json["hidden_post_status"] == null
            ? null
            : statusValues.map[json["hidden_post_status"]],
        postStatus: json["post_status"] == null
            ? null
            : statusValues.map[json["post_status"]],
        hiddenPostPassword: json["hidden_post_password"] == null
            ? null
            : json["hidden_post_password"],
        propertyBedrooms: json["property_bedrooms"] == null
            ? null
            : json["property_bedrooms"],
        propertyBathrooms: json["property_bathrooms"] == null
            ? null
            : json["property_bathrooms"],
        roomsModelGuestNo: json["guest_no"] == null ? null : json["guest_no"],
        embedVideoType: json["embed_video_type"] == null
            ? null
            : embedVideoTypeValues.map[json["embed_video_type"]],
        embedVideoId:
            json["embed_video_id"] == null ? null : json["embed_video_id"],
        checkIn: json["check-in"] == null ? null : json["check-in"],
        checkOut: json["check-out"] == null ? null : json["check-out"],
        optionalServices: json["optional-services"] == null
            ? null
            : json["optional-services"],
        outdoorFacilities: json["outdoor-facilities"] == null
            ? null
            : json["outdoor-facilities"],
        extraPeople: json["extra-people"] == null ? null : json["extra-people"],
        cancellation:
            json["cancellation"] == null ? null : json["cancellation"],
        propertyLatitude: json["property_latitude"] == null
            ? null
            : json["property_latitude"],
        propertyLongitude: json["property_longitude"] == null
            ? null
            : json["property_longitude"],
        propertyGoogleView: json["property_google_view"] == null
            ? null
            : json["property_google_view"],
        googleCameraAngle: json["google_camera_angle"] == null
            ? null
            : json["google_camera_angle"],
        pageCustomZoom:
            json["page_custom_zoom"] == null ? null : json["page_custom_zoom"],
        kitchen: json["kitchen"] == null ? null : json["kitchen"],
        internet: json["internet"] == null ? null : json["internet"],
        smokingAllowed:
            json["smoking_allowed"] == null ? null : json["smoking_allowed"],
        tv: json["tv"] == null ? null : json["tv"],
        wheelchairAccessible: json["wheelchair_accessible"] == null
            ? null
            : json["wheelchair_accessible"],
        elevatorInBuilding: json["elevator_in_building"] == null
            ? null
            : json["elevator_in_building"],
        indoorFireplace:
            json["indoor_fireplace"] == null ? null : json["indoor_fireplace"],
        heating: json["heating"] == null ? null : json["heating"],
        essentials: json["essentials"] == null ? null : json["essentials"],
        doorman: json["doorman"] == null ? null : json["doorman"],
        pool: json["pool"] == null ? null : json["pool"],
        washer: json["washer"] == null ? null : json["washer"],
        hotTub: json["hot_tub"] == null ? null : json["hot_tub"],
        dryer: json["dryer"] == null ? null : json["dryer"],
        gym: json["gym"] == null ? null : json["gym"],
        freeParkingOnPremises: json["free_parking_on_premises"] == null
            ? null
            : json["free_parking_on_premises"],
        wirelessInternet: json["wireless_internet"] == null
            ? null
            : json["wireless_internet"],
        petsAllowed: json["pets_allowed"] == null ? null : json["pets_allowed"],
        familykidFriendly: json["familykid_friendly"] == null
            ? null
            : json["familykid_friendly"],
        suitableForEvents: json["suitable_for_events"] == null
            ? null
            : json["suitable_for_events"],
        nonSmoking: json["non_smoking"] == null ? null : json["non_smoking"],
        phoneBoothlines:
            json["phone_boothlines"] == null ? null : json["phone_boothlines"],
        projectors: json["projectors"] == null ? null : json["projectors"],
        roomsModelBarRestaurant:
            json["bar__restaurant"] == null ? null : json["bar__restaurant"],
        airConditioner:
            json["air_conditioner"] == null ? null : json["air_conditioner"],
        roomsModelScannerPrinter:
            json["scanner__printer"] == null ? null : json["scanner__printer"],
        fax: json["fax"] == null ? null : json["fax"],
        propertyAgent:
            json["property_agent"] == null ? null : json["property_agent"],
        propertyUser:
            json["property_user"] == null ? null : json["property_user"],
        headerType: json["header_type"] == null ? null : json["header_type"],
        transparentStatus: json["transparent_status"] == null
            ? null
            : transparentStatusValues.map[json["transparent_status"]],
        minHeight: json["min_height"] == null ? null : json["min_height"],
        maxHeight: json["max_height"] == null ? null : json["max_height"],
        keepMin: json["keep_min"] == null ? null : json["keep_min"],
        pageCustomImage: json["page_custom_image"] == null
            ? null
            : json["page_custom_image"],
        revSlider: json["rev_slider"] == null ? null : json["rev_slider"],
        wpestateSidebarNoncename: json["wpestate_sidebar_noncename"] == null
            ? null
            : json["wpestate_sidebar_noncename"],
        sidebarOption: json["sidebar_option"] == null
            ? null
            : sidebarOptionValues.map[json["sidebar_option"]],
        sidebarSelect: json["sidebar_select"] == null
            ? null
            : sidebarSelectValues.map[json["sidebar_select"]],
        postMimeType:
            json["post_mime_type"] == null ? null : json["post_mime_type"],
        id: json["id"] == null ? null : json["id"],
        postContent: json["post_content"] == null ? null : json["post_content"],
        postExcerpt: json["post_excerpt"] == null ? null : json["post_excerpt"],
        planTitle: json["plan_title"] == null ? null : json["plan_title"],
        planDescription:
            json["plan_description"] == null ? null : json["plan_description"],
        planImageAttach: json["plan_image_attach"] == null
            ? null
            : json["plan_image_attach"],
        planImage: json["plan_image"] == null ? null : json["plan_image"],
        planSize: json["plan_size"] == null ? null : json["plan_size"],
        planRooms: json["plan_rooms"] == null ? null : json["plan_rooms"],
        planBath: json["plan_bath"] == null ? null : json["plan_bath"],
        planPrice: json["plan_price"] == null ? null : json["plan_price"],
        advFilterSearchAction: json["adv_filter_search_action"] == null
            ? null
            : json["adv_filter_search_action"],
        advFilterSearchCategory: json["adv_filter_search_category"] == null
            ? null
            : json["adv_filter_search_category"],
        currentAdvFilterCity: json["current_adv_filter_city"] == null
            ? null
            : json["current_adv_filter_city"],
        currentAdvFilterArea: json["current_adv_filter_area"] == null
            ? null
            : json["current_adv_filter_area"],
        save: json["save"] == null
            ? null
            : originalPublishValues.map[json["save"]],
        addCommentNonce: json["add_comment_nonce"] == null
            ? null
            : json["add_comment_nonce"],
        ajaxFetchListNonce: json["_ajax_fetch_list_nonce"] == null
            ? null
            : json["_ajax_fetch_list_nonce"],
        lateCheckIn:
            json["late-check-in"] == null ? null : json["late-check-in"],
        status:
            json["_status"] == null ? null : statusValues.map[json["_status"]],
        inlineEdit: json["_inline_edit"] == null ? null : json["_inline_edit"],
        postView: json["post_view"] == null ? null : json["post_view"],
        screen: json["screen"] == null ? null : json["screen"],
        editDate: json["edit_date"] == null ? null : json["edit_date"],
        postDate: json["post_date"] == null
            ? null
            : DateTime.parse(json["post_date"]),
        postDateGmt: json["post_date_gmt"] == null
            ? null
            : DateTime.parse(json["post_date_gmt"]),
        thumbnailId:
            json["_thumbnail_id"] == null ? null : json["_thumbnail_id"],
        reviewBy10: json["review_by_10"] == null ? null : json["review_by_10"],
        breakfastIncluded: json["breakfast_included"] == null
            ? null
            : json["breakfast_included"],
        bookingDates:
            json["booking_dates"] == null ? null : json["booking_dates"],
        reviewBy8: json["review_by_8"] == null ? null : json["review_by_8"],
        cleaningFeePerDay: json["cleaning_fee_per_day"] == null
            ? null
            : json["cleaning_fee_per_day"],
        cityFeePerDay:
            json["city_fee_per_day"] == null ? null : json["city_fee_per_day"],
        pricePerWeekeend: json["price_per_weekeend"] == null
            ? null
            : json["price_per_weekeend"],
        minDaysBooking:
            json["min_days_booking"] == null ? null : json["min_days_booking"],
        extraPricePerGuest: json["extra_price_per_guest"] == null
            ? null
            : json["extra_price_per_guest"],
        overloadGuest:
            json["overload_guest"] == null ? null : json["overload_guest"],
        checkinChangeOver: json["checkin_change_over"] == null
            ? null
            : json["checkin_change_over"],
        checkinCheckoutChangeOver: json["checkin_checkout_change_over"] == null
            ? null
            : json["checkin_checkout_change_over"],
        propertyPriceBeforeLabel: json["property_price_before_label"] == null
            ? null
            : json["property_price_before_label"],
        propertyPriceAfterLabel: json["property_price_after_label"] == null
            ? null
            : json["property_price_after_label"],
        propertyTaxes:
            json["property_taxes"] == null ? null : json["property_taxes"],
        securityDeposit:
            json["security_deposit"] == null ? null : json["security_deposit"],
        earlyBirdPercent: json["early_bird_percent"] == null
            ? null
            : json["early_bird_percent"],
        earlyBirdDays:
            json["early_bird_days"] == null ? null : json["early_bird_days"],
        cityFeePercent:
            json["city_fee_percent"] == null ? null : json["city_fee_percent"],
        familyKidFriendly: json["family-kid_friendly"] == null
            ? null
            : json["family-kid_friendly"],
        phoneBoothLines: json["phone_booth-lines"] == null
            ? null
            : json["phone_booth-lines"],
        barRestaurant:
            json["bar_-_restaurant"] == null ? null : json["bar_-_restaurant"],
        scannerPrinter: json["scanner_-_printer"] == null
            ? null
            : json["scanner_-_printer"],
        propertyStars: json["property_stars"] == null
            ? null
            : propertyStarsFromJson(json["property_stars"]),
        editLast: json["_edit_last"] == null ? null : json["_edit_last"],
        editLock: json["_edit_lock"] == null ? null : json["_edit_lock"],
        customPriceArray: json["custom_price_array"] == null
            ? null
            : json["custom_price_array"],
        youEarn: json["you_earn"] == null ? null : json["you_earn"],
        vcPostSettings: json["_vc_post_settings"] == null
            ? null
            : json["_vc_post_settings"],
        uniqueCodeIca:
            json["unique_code_ica"] == null ? null : json["unique_code_ica"],
        propDesc: json["prop_desc"] == null ? null : json["prop_desc"],
        listingEdit: json["listing_edit"] == null ? null : json["listing_edit"],
        country: json["country"] == null ? null : json["country"],
        area: json["area"] == null ? null : json["area"],
        city: json["city"] == null ? null : json["city"],
        guests: json["guests"] == null ? null : json["guests"],
        actionCategory:
            json["action_category"] == null ? null : json["action_category"],
        category: json["category"] == null ? null : json["category"],
        title: json["title"] == null ? null : json["title"],
        guestNo: json["guest-no"] == null ? null : json["guest-no"],
        wpOldSlug: json["_wp_old_slug"] == null ? null : json["_wp_old_slug"],
        customPrice133:
            json["custom_price133"] == null ? null : json["custom_price133"],
        propid: json["propid"] == null ? null : json["propid"],
        customPrice137:
            json["custom_price137"] == null ? null : json["custom_price137"],
        wpAttachedFile: json["_wp_attached_file"] == null
            ? null
            : json["_wp_attached_file"],
      );

  Map<String, dynamic> toJson() => {
        "post_images": postImages == null
            ? null
            : List<dynamic>.from(postImages.map((x) => x.toJson())),
        "post_title": postTitle == null ? null : postTitle,
        "city_fee": cityFee == null ? null : cityFee,
        "property_price_per_week":
            propertyPricePerWeek == null ? null : propertyPricePerWeek,
        "property_price_per_month":
            propertyPricePerMonth == null ? null : propertyPricePerMonth,
        "property_size": propertySize == null ? null : propertySize,
        "property_rooms": propertyRooms == null ? null : propertyRooms,
        "property_state": propertyState == null
            ? null
            : propertyStateValues.reverse[propertyState],
        "property_zip": propertyZip == null ? null : propertyZip,
        "property_country": propertyCountry == null
            ? null
            : propertyCountryValues.reverse[propertyCountry],
        "property_status": propertyStatus == null
            ? null
            : propertyStatusValues.reverse[propertyStatus],
        "prop_featured": propFeatured == null ? null : propFeatured,
        "property_price": propertyPrice == null ? null : propertyPrice,
        "property_label": propertyLabel == null
            ? null
            : propertyLabelValues.reverse[propertyLabel],
        "cleaning_fee": cleaningFee == null ? null : cleaningFee,
        "comment_status": commentStatus == null
            ? null
            : commentStatusEnumValues.reverse[commentStatus],
        "ping_status": pingStatus == null
            ? null
            : commentStatusEnumValues.reverse[pingStatus],
        "post_name": postName == null ? null : postName,
        "slide_template": slideTemplate == null
            ? null
            : slideTemplateValues.reverse[slideTemplate],
        "estate_property_noncename":
            estatePropertyNoncename == null ? null : estatePropertyNoncename,
        "property_address": propertyAddress == null ? null : propertyAddress,
        "property_county": propertyCounty == null
            ? null
            : propertyCountyValues.reverse[propertyCounty],
        "_ajax_nonce-add-property_action_category":
            ajaxNonceAddPropertyActionCategory == null
                ? null
                : ajaxNonceAddPropertyActionCategory,
        "newproperty_city": newpropertyCity == null
            ? null
            : newpropertyCityValues.reverse[newpropertyCity],
        "newproperty_city_parent":
            newpropertyCityParent == null ? null : newpropertyCityParent,
        "_ajax_nonce-add-property_city":
            ajaxNonceAddPropertyCity == null ? null : ajaxNonceAddPropertyCity,
        "newproperty_area": newpropertyArea == null
            ? null
            : newpropertyAreaValues.reverse[newpropertyArea],
        "newproperty_area_parent":
            newpropertyAreaParent == null ? null : newpropertyAreaParent,
        "_ajax_nonce-add-property_area":
            ajaxNonceAddPropertyArea == null ? null : ajaxNonceAddPropertyArea,
        "excerpt": excerpt == null ? null : excerpt,
        "advanced_view": advancedView == null ? null : advancedView,
        "newproperty_action_category_parent":
            newpropertyActionCategoryParent == null
                ? null
                : newpropertyActionCategoryParent,
        "original_author": originalAuthor == null ? null : originalAuthor,
        "fetch_attachments": fetchAttachments == null ? null : fetchAttachments,
        "_wpnonce": wpnonce == null ? null : wpnonce,
        "_wp_http_referer": wpHttpReferer == null ? null : wpHttpReferer,
        "import_id": importId == null ? null : importId,
        "check-in-hour":
            checkInHour == null ? null : checkInHourValues.reverse[checkInHour],
        "check-out-hour": checkOutHour == null ? null : checkOutHour,
        "original_publish": originalPublish == null
            ? null
            : originalPublishValues.reverse[originalPublish],
        "publish":
            publish == null ? null : originalPublishValues.reverse[publish],
        "newproperty_category": newpropertyCategory == null
            ? null
            : newpropertyCategoryValues.reverse[newpropertyCategory],
        "newproperty_category_parent": newpropertyCategoryParent == null
            ? null
            : newpropertyCategoryParent,
        "_ajax_nonce-add-property_category":
            ajaxNonceAddPropertyCategory == null
                ? null
                : ajaxNonceAddPropertyCategory,
        "newproperty_action_category": newpropertyActionCategory == null
            ? null
            : newpropertyActionCategoryValues
                .reverse[newpropertyActionCategory],
        "hidden_mm": hiddenMm == null ? null : hiddenMm,
        "cur_mm": curMm == null ? null : curMm,
        "hidden_jj": hiddenJj == null ? null : hiddenJj,
        "cur_jj": curJj == null ? null : curJj,
        "hidden_aa": hiddenAa == null ? null : hiddenAa,
        "cur_aa": curAa == null ? null : curAa,
        "hidden_hh": hiddenHh == null ? null : hiddenHh,
        "cur_hh": curHh == null ? null : curHh,
        "hidden_mn": hiddenMn == null ? null : hiddenMn,
        "cur_mn": curMn == null ? null : curMn,
        "hidden_post_visibility": hiddenPostVisibility == null
            ? null
            : visibilityValues.reverse[hiddenPostVisibility],
        "visibility":
            visibility == null ? null : visibilityValues.reverse[visibility],
        "post_password": postPassword == null ? null : postPassword,
        "mm": mm == null ? null : mm,
        "jj": jj == null ? null : jj,
        "aa": aa == null ? null : aa,
        "hh": hh == null ? null : hh,
        "mn": mn == null ? null : mn,
        "ss": ss == null ? null : ss,
        "user_id": userId == null ? null : userId,
        "action": action == null ? null : actionValues.reverse[action],
        "originalaction": originalaction == null
            ? null
            : actionValues.reverse[originalaction],
        "post_author": postAuthor == null ? null : postAuthor,
        "post_type": postType == null ? null : postTypeValues.reverse[postType],
        "original_post_status": originalPostStatus == null
            ? null
            : statusValues.reverse[originalPostStatus],
        "referredby": referredby == null ? null : referredby,
        "_wp_original_http_referer":
            wpOriginalHttpReferer == null ? null : wpOriginalHttpReferer,
        "auto_draft": autoDraft == null ? null : autoDraft,
        "post_id": postId == null ? null : postId,
        "meta-box-order-nonce":
            metaBoxOrderNonce == null ? null : metaBoxOrderNonce,
        "closedpostboxesnonce":
            closedpostboxesnonce == null ? null : closedpostboxesnonce,
        "samplepermalinknonce":
            samplepermalinknonce == null ? null : samplepermalinknonce,
        "content": content == null ? null : content,
        "wp-preview": wpPreview == null ? null : wpPreview,
        "hidden_post_status": hiddenPostStatus == null
            ? null
            : statusValues.reverse[hiddenPostStatus],
        "post_status":
            postStatus == null ? null : statusValues.reverse[postStatus],
        "hidden_post_password":
            hiddenPostPassword == null ? null : hiddenPostPassword,
        "property_bedrooms": propertyBedrooms == null ? null : propertyBedrooms,
        "property_bathrooms":
            propertyBathrooms == null ? null : propertyBathrooms,
        "guest_no": roomsModelGuestNo == null ? null : roomsModelGuestNo,
        "embed_video_type": embedVideoType == null
            ? null
            : embedVideoTypeValues.reverse[embedVideoType],
        "embed_video_id": embedVideoId == null ? null : embedVideoId,
        "check-in": checkIn == null ? null : checkIn,
        "check-out": checkOut == null ? null : checkOut,
        "optional-services": optionalServices == null ? null : optionalServices,
        "outdoor-facilities":
            outdoorFacilities == null ? null : outdoorFacilities,
        "extra-people": extraPeople == null ? null : extraPeople,
        "cancellation": cancellation == null ? null : cancellation,
        "property_latitude": propertyLatitude == null ? null : propertyLatitude,
        "property_longitude":
            propertyLongitude == null ? null : propertyLongitude,
        "property_google_view":
            propertyGoogleView == null ? null : propertyGoogleView,
        "google_camera_angle":
            googleCameraAngle == null ? null : googleCameraAngle,
        "page_custom_zoom": pageCustomZoom == null ? null : pageCustomZoom,
        "kitchen": kitchen == null ? null : kitchen,
        "internet": internet == null ? null : internet,
        "smoking_allowed": smokingAllowed == null ? null : smokingAllowed,
        "tv": tv == null ? null : tv,
        "wheelchair_accessible":
            wheelchairAccessible == null ? null : wheelchairAccessible,
        "elevator_in_building":
            elevatorInBuilding == null ? null : elevatorInBuilding,
        "indoor_fireplace": indoorFireplace == null ? null : indoorFireplace,
        "heating": heating == null ? null : heating,
        "essentials": essentials == null ? null : essentials,
        "doorman": doorman == null ? null : doorman,
        "pool": pool == null ? null : pool,
        "washer": washer == null ? null : washer,
        "hot_tub": hotTub == null ? null : hotTub,
        "dryer": dryer == null ? null : dryer,
        "gym": gym == null ? null : gym,
        "free_parking_on_premises":
            freeParkingOnPremises == null ? null : freeParkingOnPremises,
        "wireless_internet": wirelessInternet == null ? null : wirelessInternet,
        "pets_allowed": petsAllowed == null ? null : petsAllowed,
        "familykid_friendly":
            familykidFriendly == null ? null : familykidFriendly,
        "suitable_for_events":
            suitableForEvents == null ? null : suitableForEvents,
        "non_smoking": nonSmoking == null ? null : nonSmoking,
        "phone_boothlines": phoneBoothlines == null ? null : phoneBoothlines,
        "projectors": projectors == null ? null : projectors,
        "bar__restaurant":
            roomsModelBarRestaurant == null ? null : roomsModelBarRestaurant,
        "air_conditioner": airConditioner == null ? null : airConditioner,
        "scanner__printer":
            roomsModelScannerPrinter == null ? null : roomsModelScannerPrinter,
        "fax": fax == null ? null : fax,
        "property_agent": propertyAgent == null ? null : propertyAgent,
        "property_user": propertyUser == null ? null : propertyUser,
        "header_type": headerType == null ? null : headerType,
        "transparent_status": transparentStatus == null
            ? null
            : transparentStatusValues.reverse[transparentStatus],
        "min_height": minHeight == null ? null : minHeight,
        "max_height": maxHeight == null ? null : maxHeight,
        "keep_min": keepMin == null ? null : keepMin,
        "page_custom_image": pageCustomImage == null ? null : pageCustomImage,
        "rev_slider": revSlider == null ? null : revSlider,
        "wpestate_sidebar_noncename":
            wpestateSidebarNoncename == null ? null : wpestateSidebarNoncename,
        "sidebar_option": sidebarOption == null
            ? null
            : sidebarOptionValues.reverse[sidebarOption],
        "sidebar_select": sidebarSelect == null
            ? null
            : sidebarSelectValues.reverse[sidebarSelect],
        "post_mime_type": postMimeType == null ? null : postMimeType,
        "id": id == null ? null : id,
        "post_content": postContent == null ? null : postContent,
        "post_excerpt": postExcerpt == null ? null : postExcerpt,
        "plan_title": planTitle == null ? null : planTitle,
        "plan_description": planDescription == null ? null : planDescription,
        "plan_image_attach": planImageAttach == null ? null : planImageAttach,
        "plan_image": planImage == null ? null : planImage,
        "plan_size": planSize == null ? null : planSize,
        "plan_rooms": planRooms == null ? null : planRooms,
        "plan_bath": planBath == null ? null : planBath,
        "plan_price": planPrice == null ? null : planPrice,
        "adv_filter_search_action":
            advFilterSearchAction == null ? null : advFilterSearchAction,
        "adv_filter_search_category":
            advFilterSearchCategory == null ? null : advFilterSearchCategory,
        "current_adv_filter_city":
            currentAdvFilterCity == null ? null : currentAdvFilterCity,
        "current_adv_filter_area":
            currentAdvFilterArea == null ? null : currentAdvFilterArea,
        "save": save == null ? null : originalPublishValues.reverse[save],
        "add_comment_nonce": addCommentNonce == null ? null : addCommentNonce,
        "_ajax_fetch_list_nonce":
            ajaxFetchListNonce == null ? null : ajaxFetchListNonce,
        "late-check-in": lateCheckIn == null ? null : lateCheckIn,
        "_status": status == null ? null : statusValues.reverse[status],
        "_inline_edit": inlineEdit == null ? null : inlineEdit,
        "post_view": postView == null ? null : postView,
        "screen": screen == null ? null : screen,
        "edit_date": editDate == null ? null : editDate,
        "post_date": postDate == null ? null : postDate.toIso8601String(),
        "post_date_gmt":
            postDateGmt == null ? null : postDateGmt.toIso8601String(),
        "_thumbnail_id": thumbnailId == null ? null : thumbnailId,
        "review_by_10": reviewBy10 == null ? null : reviewBy10,
        "breakfast_included":
            breakfastIncluded == null ? null : breakfastIncluded,
        "booking_dates": bookingDates == null ? null : bookingDates,
        "review_by_8": reviewBy8 == null ? null : reviewBy8,
        "cleaning_fee_per_day":
            cleaningFeePerDay == null ? null : cleaningFeePerDay,
        "city_fee_per_day": cityFeePerDay == null ? null : cityFeePerDay,
        "price_per_weekeend":
            pricePerWeekeend == null ? null : pricePerWeekeend,
        "min_days_booking": minDaysBooking == null ? null : minDaysBooking,
        "extra_price_per_guest":
            extraPricePerGuest == null ? null : extraPricePerGuest,
        "overload_guest": overloadGuest == null ? null : overloadGuest,
        "checkin_change_over":
            checkinChangeOver == null ? null : checkinChangeOver,
        "checkin_checkout_change_over": checkinCheckoutChangeOver == null
            ? null
            : checkinCheckoutChangeOver,
        "property_price_before_label":
            propertyPriceBeforeLabel == null ? null : propertyPriceBeforeLabel,
        "property_price_after_label":
            propertyPriceAfterLabel == null ? null : propertyPriceAfterLabel,
        "property_taxes": propertyTaxes == null ? null : propertyTaxes,
        "security_deposit": securityDeposit == null ? null : securityDeposit,
        "early_bird_percent":
            earlyBirdPercent == null ? null : earlyBirdPercent,
        "early_bird_days": earlyBirdDays == null ? null : earlyBirdDays,
        "city_fee_percent": cityFeePercent == null ? null : cityFeePercent,
        "family-kid_friendly":
            familyKidFriendly == null ? null : familyKidFriendly,
        "phone_booth-lines": phoneBoothLines == null ? null : phoneBoothLines,
        "bar_-_restaurant": barRestaurant == null ? null : barRestaurant,
        "scanner_-_printer": scannerPrinter == null ? null : scannerPrinter,
        "property_stars": propertyStars == null ? null : propertyStars.toJson(),
        "_edit_last": editLast == null ? null : editLast,
        "_edit_lock": editLock == null ? null : editLock,
        "custom_price_array":
            customPriceArray == null ? null : customPriceArray,
        "you_earn": youEarn == null ? null : youEarn,
        "_vc_post_settings": vcPostSettings == null ? null : vcPostSettings,
        "unique_code_ica": uniqueCodeIca == null ? null : uniqueCodeIca,
        "prop_desc": propDesc == null ? null : propDesc,
        "listing_edit": listingEdit == null ? null : listingEdit,
        "country": country == null ? null : country,
        "area": area == null ? null : area,
        "city": city == null ? null : city,
        "guests": guests == null ? null : guests,
        "action_category": actionCategory == null ? null : actionCategory,
        "category": category == null ? null : category,
        "title": title == null ? null : title,
        "guest-no": guestNo == null ? null : guestNo,
        "_wp_old_slug": wpOldSlug == null ? null : wpOldSlug,
        "custom_price133": customPrice133 == null ? null : customPrice133,
        "propid": propid == null ? null : propid,
        "custom_price137": customPrice137 == null ? null : customPrice137,
        "_wp_attached_file": wpAttachedFile == null ? null : wpAttachedFile,
      };
}

enum Action { EDITPOST, WPESTATE_AJAX_UPDATE_LISTING_DESCRIPTION }

final actionValues = EnumValues({
  "editpost": Action.EDITPOST,
  "wpestate_ajax_update_listing_description":
      Action.WPESTATE_AJAX_UPDATE_LISTING_DESCRIPTION
});

enum CheckInHour { AFTER_15_PM, AFTER_13_PM, EMPTY }

final checkInHourValues = EnumValues({
  "After 13 PM": CheckInHour.AFTER_13_PM,
  "After 15 PM": CheckInHour.AFTER_15_PM,
  "": CheckInHour.EMPTY
});

enum CommentStatusEnum { OPEN, CLOSED }

final commentStatusEnumValues = EnumValues(
    {"closed": CommentStatusEnum.CLOSED, "open": CommentStatusEnum.OPEN});

enum EmbedVideoType { VIMEO, YOUTUBE }

final embedVideoTypeValues = EnumValues(
    {"vimeo": EmbedVideoType.VIMEO, "youtube": EmbedVideoType.YOUTUBE});

enum Status { PUBLISH, EXPIRED }

final statusValues =
    EnumValues({"expired": Status.EXPIRED, "publish": Status.PUBLISH});

enum Visibility { PUBLIC }

final visibilityValues = EnumValues({"public": Visibility.PUBLIC});

enum NewpropertyActionCategory {
  ADD_NEW_OPTION_FOR,
  NEWPROPERTY_ACTION_CATEGORY_ADD_NEW_OPTION_FOR,
  ADD_NEW_OPTION_FOR_WHAT_DO_YOU_RENT
}

final newpropertyActionCategoryValues = EnumValues({
  "Add new option for ": NewpropertyActionCategory.ADD_NEW_OPTION_FOR,
  "Add new option for What do you rent":
      NewpropertyActionCategory.ADD_NEW_OPTION_FOR_WHAT_DO_YOU_RENT,
  "Add new option for":
      NewpropertyActionCategory.NEWPROPERTY_ACTION_CATEGORY_ADD_NEW_OPTION_FOR
});

enum NewpropertyArea { NEW_NEIGHBORHOOD_AREA }

final newpropertyAreaValues = EnumValues(
    {"New Neighborhood / Area": NewpropertyArea.NEW_NEIGHBORHOOD_AREA});

enum NewpropertyCategory { NEW_PROPERTY_CATEGORY }

final newpropertyCategoryValues = EnumValues(
    {"New Property Category": NewpropertyCategory.NEW_PROPERTY_CATEGORY});

enum NewpropertyCity { NEW_CITY }

final newpropertyCityValues =
    EnumValues({"New City": NewpropertyCity.NEW_CITY});

enum OriginalPublish { UPDATE, PUBLISH }

final originalPublishValues = EnumValues(
    {"Publish": OriginalPublish.PUBLISH, "Update": OriginalPublish.UPDATE});

class PostImage {
  String id;
  String postParent;
  String guid;

  PostImage({
    this.id,
    this.postParent,
    this.guid,
  });

  factory PostImage.fromJson(Map<String, dynamic> json) => PostImage(
        id: json["ID"] == null ? null : json["ID"],
        postParent: json["post_parent"] == null ? null : json["post_parent"],
        guid: json["guid"] == null ? null : json["guid"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id == null ? null : id,
        "post_parent": postParent == null ? null : postParent,
        "guid": guid == null ? null : guid,
      };
}

enum PostType { ESTATE_PROPERTY }

final postTypeValues =
    EnumValues({"estate_property": PostType.ESTATE_PROPERTY});

enum PropertyCountry { SPAIN, MOROCCO }

final propertyCountryValues = EnumValues(
    {"Morocco": PropertyCountry.MOROCCO, "Spain": PropertyCountry.SPAIN});

enum PropertyCounty { IBIZA, MOROCCO }

final propertyCountyValues = EnumValues(
    {"Ibiza": PropertyCounty.IBIZA, "Morocco": PropertyCounty.MOROCCO});

enum PropertyLabel { NIGHT, EMPTY }

final propertyLabelValues =
    EnumValues({"": PropertyLabel.EMPTY, "/ night": PropertyLabel.NIGHT});

PropertyStars propertyStarsFromJson(String str) =>
    PropertyStars.fromJson(json.decode(str));

String propertyStarsToJson(PropertyStars data) => json.encode(data.toJson());

class PropertyStars {
  int accuracy;
  int communication;
  int cleanliness;
  int location;
  int checkIn;
  int value;
  int rating;

  PropertyStars({
    this.accuracy,
    this.communication,
    this.cleanliness,
    this.location,
    this.checkIn,
    this.value,
    this.rating,
  });

  factory PropertyStars.fromJson(Map<String, dynamic> json) => PropertyStars(
        accuracy: json["accuracy"] == null ? null : json["accuracy"],
        communication:
            json["communication"] == null ? null : json["communication"],
        cleanliness: json["cleanliness"] == null ? null : json["cleanliness"],
        location: json["location"] == null ? null : json["location"],
        checkIn: json["check_in"] == null ? null : json["check_in"],
        value: json["value"] == null ? null : json["value"],
        rating: json["rating"] == null ? null : json["rating"],
      );

  Map<String, dynamic> toJson() => {
        "accuracy": accuracy == null ? null : accuracy,
        "communication": communication == null ? null : communication,
        "cleanliness": cleanliness == null ? null : cleanliness,
        "location": location == null ? null : location,
        "check_in": checkIn == null ? null : checkIn,
        "value": value == null ? null : value,
        "rating": rating == null ? null : rating,
      };
}

enum PropertyState { IBIZA, I, CASABLANCA }

final propertyStateValues = EnumValues({
  "Casablanca": PropertyState.CASABLANCA,
  "i": PropertyState.I,
  "Ibiza": PropertyState.IBIZA
});

enum PropertyStatus { NORMAL }

final propertyStatusValues = EnumValues({"normal": PropertyStatus.NORMAL});

enum SidebarOption { RIGHT }

final sidebarOptionValues = EnumValues({"right": SidebarOption.RIGHT});

enum SidebarSelect { PRIMARY_WIDGET_AREA }

final sidebarSelectValues =
    EnumValues({"primary-widget-area": SidebarSelect.PRIMARY_WIDGET_AREA});

enum SlideTemplate { DEFAULT }

final slideTemplateValues = EnumValues({"default": SlideTemplate.DEFAULT});

enum TransparentStatus { NO }

final transparentStatusValues = EnumValues({"no": TransparentStatus.NO});

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

Map<String, String> parseFromString(String data) {
  var parsed = data;
  //.replaceFirst('"', "");
  //.replaceRange(data.length - 2, data.length - 1, "");
  print("----------------------");
  print(data);
  print(parsed.replaceAllMapped('"', (_) => ''));
  return json.decode(parsed.replaceAllMapped('"', (_) => ''));
}
