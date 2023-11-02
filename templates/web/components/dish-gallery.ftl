<#import "/templates/system/common/crafter.ftl" as crafter />

<section id="gallery" class="parallax-section">
  <div class="container">
    <div class="row">
      <div class="col-md-offset-2 col-md-8 col-sm-12 text-center">
          <@crafter.h1 $field="title_t" class="heading">
              ${contentModel.title_t}
          </@crafter.h1>
        <hr>
      </div>
    </div>
    <div class="row">
      <#assign breaker = 0 />

      <#if contentModel.dishList_o?? && contentModel.dishList_o.item??>
        <#list contentModel.dishList_o.item as dishItem>
          <#assign index = dishItem?index>

          <#if dishItem?index == (0 + breaker) || dishItem?index == (2 + breaker) || dishItem?index == (3 + breaker) >
            <#assign midClass = "" />
            <#if dishItem?index == (2 + breaker) >
              <#assign midClass = "food-element-mid" />
            </#if>

            <div class="col-md-4 col-sm-4 wow fadeInUp food-element-container ${midClass}" data-wow-delay="0.3s">
          </#if>

          <a class="image-container" href="${dishItem.dishImage_s}" data-lightbox-gallery="zenda-gallery">
            <@crafter.img $field="dishList_o.dishImage_s" $index=index src=(dishItem.dishImage_s) alt="gallery img" />
          </a>

          <div class="food-element-description">
            <@crafter.h3 $field="dishList_o.dishName_t" $index=index>
                ${dishItem.dishName_t}
            </@crafter.h3>
            <@crafter.span $field="dishList_o.dishIngredients_t" $index=index>
                ${dishItem.dishIngredients_t}
            </@crafter.span>
          </div>

          <#if dishItem?index == (1 + breaker) || dishItem?index == (2 + breaker) || dishItem?index == (4 + breaker) >
            </div>
          </#if>

          <#if dishItem?index == (4  + breaker)>
            <#assign breaker = (breaker + 5) />
          </#if>

          <#if dishItem?is_last>
            </div>
          </#if>
        </#list>
      </#if>
    </div>
  </div>
</section>