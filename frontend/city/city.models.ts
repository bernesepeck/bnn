export interface SupportLinkModel {
    id: number;
    status: string;
    sort: number | null;
    date_created: string;
    link: string;
    city: number;
    languages_code: string;
    title: string;
    description: string | null;
    linkText: string;
}
export interface EventModel {
    id: number;
    status: string;
    sort: number | null;
    date_updated: string;
    teaser: string | null;
    city: number;
    start: string | null;
    languages_code: string;
    name: string;
    description: string | null;
    customDates: string | null;
    location: string | null;
}
export interface CustomSectionModel {
    id: number;
    status: string;
    sort: number | null;
    date_updated: string;
    link: string;
    city: number;
    languages_code: string;
    title: string;
    description: string | null;
    linkText: string;
}
export interface CityModel {
    id: number;
    status: string;
    date_updated: string;
    languages_code: string;
    name: string;
    page_title: string | null;
    description: string | null;
    sponsors: string | null;
    events: EventModel[];
    supportlinks: SupportLinkModel[];
    customSections: CustomSectionModel[];
    emailForm: [];
    [key: string]: any;
}
export interface GalleryModel {
    id: number;
    directus_files_id: string;
}
