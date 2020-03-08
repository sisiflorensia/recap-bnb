import "bootstrap";

// Nice calendar plugins
import flatpickr from "flatpickr";
import { initFlatpickr } from "../plugins/init_flatpickr.js"
initFlatpickr();

// Nice star rating system
import { initStarRating } from '../plugins/init_star_rating';
initStarRating();

// Customize upload button & photo preview
import { previewImageOnFileSelect } from '../plugins/photo_preview';
previewImageOnFileSelect()
