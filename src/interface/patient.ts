export interface Patient {
    id: number;
    first_name: string;
    last_name: string; 
    email: string; 
    address: string; 
    diagnosis: string; 
    phone: string; 
    gender: string;
    dob: Date | string;
    status: string; 
    image_url: string;
}