export interface CityModel {
    id: number;
    status: string;
    date_updated: string;
    languages_code: string;
    name: string;
    page_title: string | null;
    description: string | null;
    sponsors: string | null;
}