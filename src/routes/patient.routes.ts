import { Router } from 'express';
import { createPatient, deletePatient, getPatient, getPatients, updatePatient } from '../controller/patient.controller';

const patientRoutes = Router();

// A created (posted) item will be in the request body, so no param is needed
patientRoutes.route('/')
    .get(getPatients)
    .post(createPatient);

// Updated item will be in the body of the request, not the params
// When updating, the id in the route params is used to check if they exist
patientRoutes.route('/:patientId')
    .get(getPatient)
    .put(updatePatient) 
    .delete(deletePatient);

export default patientRoutes;