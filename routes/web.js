import express from "express";
import homePageController from "../controllers/homePageController";
import registerController from "../controllers/registerController";
import loginController from "../controllers/loginController";
import filmsController from "../controllers/filmsController";
import auth from "../validation/authValidation";
import passport from "passport";
import initPassportLocal from "../controllers/passportLocalController";
import aboutController from "../controllers/aboutController";
import actorsController from "../controllers/actorsController";
import projectionsController from "../controllers/projectionsController";
import addFilmController from "../controllers/addFilmController";
import addActorController from "../controllers/addActorController";
import addProjectionController from "../controllers/addProjectionController";
// Init all passport
initPassportLocal();

let router = express.Router();

let initWebRoutes = (app) => {
    //router.get("/", loginController.checkLoggedIn, homePageController.handleHelloWorld);
    router.get("/login",loginController.checkLoggedOut, loginController.getPageLogin);
    router.post("/login", passport.authenticate("local", {
        successRedirect: "/",
        failureRedirect: "/login",
        successFlash: true,
        failureFlash: true
    }));


    router.get("/register", registerController.getPageRegister);
    router.post("/register", auth.validateRegister, registerController.createNewUser);
    router.post("/logout", loginController.postLogOut);

    router.get('/films', filmsController.handleFilms);
    router.get('/about', aboutController.handleAbout);
    router.get('/actors', actorsController.handleActors);
    router.get('/projections', projectionsController.handleProjections);
    router.get('/addFilm', addFilmController.handleNewFilm, addFilmController.createNewFilm);
    router.get('/addActor', addActorController.handleNewActor);
    router.get('/addProjection', addProjectionController.handleNewProjection)
    return app.use("/", router);

    
};
module.exports = initWebRoutes;
