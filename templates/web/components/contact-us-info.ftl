<#import "/templates/system/common/crafter.ftl" as crafter />

<footer class="parallax-section">
    <div class="container">
        <div class="row">

            <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
                <@crafter.h2 $field="contactInfoLabel_t" class="heading">
                    ${contentModel.contactInfoLabel_t}
                </@crafter.h2>
                <div class="ph">
                    <p>
                        <i class="fa fa-phone" id="fa-icono"></i>
                        <@crafter.span $field="phoneLabel_t">
                            ${contentModel.phoneLabel_t}
                        </@crafter.span>
                    </p>
                    <@crafter.h4 $field="phoneNumber_s">${contentModel.phoneNumber_s}</@crafter.h4>
                </div>
                <div class="address">
                    <p>
                        <i class="fa fa-map-marker" id="fa-icono"></i>
                        <@crafter.span $field="locationLabel_t">
                            ${contentModel.locationLabel_t}
                        </@crafter.span>
                    </p>
                    <@crafter.h4 $field="location_t">${contentModel.location_t}</@crafter.h4>
                </div>
            </div>

            <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
                <@crafter.h2 $field="openHoursLabel_t" class="heading">
                    ${contentModel.openHoursLabel_t}
                </@crafter.h2>

                <#list contentModel.openDays_o.item as item>
                    <p>
                        ${item.openDay_t}
                        <span>
                            ${item.openAt_dt?time?string.short}
                            -
                            ${item.closedAt_dt?time?string.short}
                        </span>
                    </p>
                </#list>
            </div>

            <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
                <@crafter.h2 $field="socialLinksTitle_t" class="heading">
                    ${contentModel.socialLinksTitle_t}
                </@crafter.h2>
                <ul class="social-icon">
                    <#list contentModel.contactSocialLinks_o.item as item>
                        <li>
                            <a href="${item.socialLinkUrl!""}" class="fa fa-${item.socialLinkType_s} wow bounceIn" data-wow-delay="0.3s"></a>
                        </li>
                    </#list>
                </ul>
            </div>

        </div>
    </div>
</footer>