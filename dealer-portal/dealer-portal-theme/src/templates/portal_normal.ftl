<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div id="wrapper">
	<header class="container-fluid" id="banner" role="banner">
		<div class="row">
			<div class="col-md-12 navbar-header text-white" id="heading">
				<div class="col-md-6">
					<a class="" href="/" title="Dealer Portal" />">
						<img alt="${logo_description}" height="64" src="${site_logo}" />
						<h5>Dealer Portal</h5>
					</a>

					<input class="form-control" placeholder="Search inventory, customers, orders..." type="search" />
				</div>

				<#if is_setup_complete>
					<div class="col-md-3">
						<div class="user-personal-bar">
							<@liferay.user_personal_bar />
						</div>
					</div>
				</#if>
			</div>

			<#include "${full_templates_path}/navigation.ftl" />
		</div>
	</header>

	<section class="container-fluid-1280" id="content">
		<h1 class="hide-accessible">${the_title}</h1>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>

	<footer class="container-fluid" id="footer" role="contentinfo">
		<div class="row">
			<#include "${full_templates_path}/footer.ftl" />
		</div>
	</footer>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>