<#import "/templates/system/common/crafter.ftl" as crafter />

<section id="contact" class="parallax-section">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-10 col-sm-12 text-center">
                <h1 class="heading">${contentModel.title_t}</h1>
                <hr>
            </div>
            <div class="col-md-offset-1 col-md-10 col-sm-12 wow fadeIn" data-wow-delay="0.9s">
                <form action="${contentModel.postURL_s}" method="post" id="contact-us-form" name="contact-us-form">
                    <div class="col-md-6 col-sm-6">
                        <input name="name" type="text" class="form-control" id="name" placeholder="${contentModel.nameLabel_t}" value="${''}" required>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <input name="email" type="email" class="form-control" id="email" placeholder="${contentModel.emailLabel_t}" value="${''}" required>
                    </div>
                    <div class="col-md-12 col-sm-12">
                        <textarea name="message" rows="8" class="form-control" id="message" placeholder="${contentModel.messageLabel_t}" required>${''}</textarea>
                    </div>
                    <div class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6">
                        <input name="submit" type="submit" class="form-control" id="submit" value="${contentModel.buttonLabel_t}">
                    </div>
                </form>
            </div>
            <div class="col-md-2 col-sm-1"></div>
        </div>
    </div>
</section>
