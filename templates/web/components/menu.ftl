<#import "/templates/system/common/crafter.ftl" as crafter />
<#include "/templates/web/functions/utils-functions.ftl">

<section id="menu" class="parallax-section">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8 col-sm-12 text-center">
                <@crafter.h1 $field="title_t" class="heading">
                    ${contentModel.title_t}
                </@crafter.h1>
                <hr>
            </div>
        </div>
            <@crafter.renderRepeatGroup
                $field="menuList_o"
                $containerTag="div"
                $containerAttributes={'class': 'row'}
                $itemTag="div"
                $itemAttributes={'class': 'col-md-6 col-sm-6'};
                dishItem, index
            >
                <h4> ${dishItem.dishName_t?trim} ${dots(dishItem.dishName_t?trim, dishItem.dishPrice_s?trim)?trim} <span>${contentModel.dishPriceCurrency_s}${dishItem.dishPrice_s?trim}</span></h4>
                <h5>${dishItem.dishIngredients_t?trim}</h5>
            </@crafter.renderRepeatGroup>
    </div>
</section>
