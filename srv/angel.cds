using {guardianangel} from '../db/schema';

service guardianangel_service {
        
    entity GeoFences as projection on guardianangel.GeoFences;
    entity GeoFencePoints as projection on guardianangel.GeoFencePoints;
    entity UserLocationz as projection on guardianangel.UserLocationz;
    @readonly entity UserLocations as projection on guardianangel.UserLocations;
    action popUser ( ) returns array of UserLocations;
    @readonly entity Books as projection on guardianangel.Books;
    action addRandomBook ( ) returns array of Books;
}