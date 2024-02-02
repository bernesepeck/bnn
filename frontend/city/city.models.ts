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
    start: string | null; // Assuming it's a string, adjust if it's a different type
    languages_code: string;
    name: string;
    description: string | null;
    customDates: string | null;
    location: string | null;
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
    events: EventModel[]; // Array of EventModel
    supportlinks: SupportLinkModel[]; // Array of SupportLinkModel
}
