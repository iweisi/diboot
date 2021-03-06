<#assign plugins=[] />
<#assign features=["L","C","R","U","D"] />
<#include "../../include/head.ftl">
<body class="${bodyClass}">
<@wrapper>
	<@location loc1="短信模板管理" loc1url="${ctx.contextPath}/msg/messageTmpl/" loc2="短信模板记录" />
	<div class="content">
		<@portlet>
			<@portletTitle title="短信模板记录">
				<#if features?seq_contains("C")>
					<@actions>
						<a class="btn btn-sm blue" href="${ctx.contextPath}/msg/messageTmpl/create">
							<i class="fa fa-plus"></i> 新建短信模板
						</a>
					</@actions>
				</#if>
			</@portletTitle>
			<@portletBody>
				<#include "list_page.ftl">
				<#include "../../include/pagination.ftl">
			</@portletBody>
		</@portlet><#-- END PAGE BODY -->
	</div><#-- END CONTENT BODY -->
</@wrapper>
</body>
</html>