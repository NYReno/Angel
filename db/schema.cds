namespace guardianangel; 

// Identifiers for a collection of Path Points
// Used in Geofence definition
using { cuid } from '@sap/cds/common';

entity GeoFences: cuid {
    Points: Composition of GeoFencePoints on Points.parent = $self;
    GEOFENCE_NAME: String (20);
    GEOFENCE_TYPE: String(1); // O - Open; C - Closed
    PRIVACY: String (1);      // P - Public; X - Private
    CENTER_LAT: Double;       // Map center level when displayed
    CENTER_LONG: Double;      // Map center level when displayed
    ZOOM_LAT: Double;         // Map zoom level when displayed
    ZOOM_LONG: Double;        // Map zoom level when displayed
    PATH_TOLERANCE: Double;
    ENTRANCE_TOLERANCE: Double;
}

// Collection of points that define entrance, center and fence
entity GeoFencePoints {
    key parent: Association to GeoFences;
    key POINT_TYPE: String(1); // E - Entrance; C - Center; F - Fence
    key POINT_NUM: Integer;
    LATITUDE: Double;
    LONGITUDE: Double;
}

// Collection of points that define entrance, center and fence
entity UserLocations: cuid {
    LOC_DATE: String(8);
    LOC_TIME: String(8);
    LATITUDE: Double;
    LONGITUDE: Double;
    WITHIN: String(1);
    DISTANCE: Double;
    TOLERANCE: Double;
    DIFFERENCE: Double;
}

// Collection of points that define entrance, center and fence
entity UserLocationz: cuid {
    LOC_DATE: String(8);
    LOC_TIME: String(8);
    LATITUDE: Double;
    LONGITUDE: Double;
    WITHIN: String(1);
    DISTANCE: Double;
    TOLERANCE: Double;
    DIFFERENCE: Double;
}

entity Books {
  key ID : Integer;
  TITLE  : String;
  STOCK  : Integer;
}