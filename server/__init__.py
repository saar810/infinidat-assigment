from flask import Flask, request
import logging
from .routes.home_route import home_bp
from .routes.about_route import about_bp


def flask_app():
    app = Flask(__name__)

    logging.basicConfig(filename="app.log", level=logging.DEBUG)

    app.register_blueprint(home_bp)
    app.register_blueprint(about_bp)

    @app.errorhandler(404)
    def page_not_found_error(error):
        app.logger.error("Page not found: %s", (request.path))
        return "The request page was not found.", 404

    return app
