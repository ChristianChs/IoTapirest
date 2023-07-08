import { Router } from "express";
import { createDataEsp32 } from "../controllers/esp32.controllers.js";
const router = Router()

router.post('/esp32',createDataEsp32)

export default router