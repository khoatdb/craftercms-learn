<#import "/templates/system/common/crafter.ftl" as crafter />

<section id="copyright">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-sm-12">
          <@crafter.h3 $field="footerTitle_t">${contentModel.footerTitle_t}</@crafter.h3>
        <p>
            <@crafter.span $field="copyright_t">
                ${contentModel.copyright_t}
            </@crafter.span>
            <#if contentModel.showCredits_b>
              |
                <@crafter.span $field="creditsLabel_t">
                    ${contentModel.creditsLabel_t}
                </@crafter.span>
              <a rel="nofollow" href="${contentModel.linkURL_s}" target="_parent">
                  <@crafter.span $field="linkLabel_t">
                      ${contentModel.linkLabel_t}
                  </@crafter.span>
              </a>
            </#if>
        </p>
      </div>
    </div>
  </div>
</section>
