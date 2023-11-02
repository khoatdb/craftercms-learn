<#import "/templates/system/common/crafter.ftl" as crafter />

<section id="team" class="parallax-section">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8 col-sm-12 text-center">
                <@crafter.h1 $field="title_t" class="heading">
                    ${contentModel.title_t}
                </@crafter.h1>
                <hr>
            </div>

            <@crafter.renderRepeatGroup
                $field="teamMembers_o"
                $containerTag="div"
                $itemTag="div"
                $itemAttributes={'class': 'col-md-4 col-sm-4 wow fadeInUp', 'data-wow-delay': '0.3s'};
                member, index
            >
                <@crafter.img
                    $field="teamMembers_o.employeePhoto_s"
                    $index=index
                    src=(member.employeePhoto_s)
                    alt=(member.employeeName_t)
                    class="img-responsive center-block"
                />

                <@crafter.h4 $field="teamMembers_o.employeeName_t" $index=index>
                    ${member.employeeName_t!""}
                </@crafter.h4>

                <@crafter.h4 $field="teamMembers_o.jobTitle_t" $index=index>
                    ${member.jobTitle_t!""}
                </@crafter.h4>
            </@crafter.renderRepeatGroup>
        </div>
    </div>
</section>