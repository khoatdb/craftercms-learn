<#import "/templates/system/common/crafter.ftl" as crafter />
<!-- navigation section_s -->
<div class="collapse navbar-collapse">
  	<ul class="nav navbar-nav navbar-right">
    	<#list contentModel.navigationItems_o.item as item>
            <li>
              	<a href="#${item.section_s}" class="smoothScroll">${item.navigationItem_t}</a>
            </li>
    	</#list>
  	</ul>
</div>