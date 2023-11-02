<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>${contentModel.topSiteName_t}</title>

        <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="keywords" content="" />
        <meta name="description" content="" />

        <!-- CSS Files -->
        <#include "/templates/web/static-includes/css-libraries.ftl" />
        <@crafter.head/>
    </head>
    <body>
        <@crafter.body_top/>
        <!-- Preloader section -->
        <section class="preloader">
            <div class="sk-spinner sk-spinner-pulse"></div>
        </section>

        <!-- Navigation section -->
        <section class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                    </button>
                    <a href="/" class="navbar-brand">${contentModel.topSiteName_t}</a>
                </div>
                <@renderComponent component = contentModel.menuBar_o.item />
            </div>
        </section>



        <!-- Home section -->

        <@crafter.section id="home" class="parallax-section" style="background-image:url(${contentModel.homepageImage_s})">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <@crafter.h1 $field="title_t">
                            ${contentModel.title_t}
                        </@crafter.h1>
                        <@crafter.h2 $field="slogan_t">
                            ${contentModel.slogan_t}
                        </@crafter.h2>
                        <a href="#gallery" class="smoothScroll btn btn-default">
                            <@crafter.span $field="buttonLabel_t">
                                ${contentModel.buttonLabel_t}
                            </@crafter.span>
                        </a>
                    </div>
                </div>
            </div>
        </@crafter.section>

        <@crafter.renderComponentCollection $field="sections_o"/>

        <!-- Javascript Files -->
        <#include "/templates/web/static-includes/js-libraries.ftl" />

        <@crafter.body_bottom/>
    </body>
</html>