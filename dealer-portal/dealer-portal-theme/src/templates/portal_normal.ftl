<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />

	<link rel="stylesheet" href="https://naver.github.io/billboard.js/release/latest/dist/billboard.css">

	<script src="https://d3js.org/d3.v5.min.js"></script>
	<script src="https://naver.github.io/billboard.js/release/latest/dist/billboard.js"></script>
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div id="wrapper">
	<header class="riuvo-demo container-fluid" id="banner" role="banner">
		<div class="row">
			<div class="col-md-12 navbar-header text-white" id="heading">
				<div class="navbar-header-inner max-width-1224 row">
					<div class="col-md-6">
						<a class="company-logo" href="/" title="Dealer Portal">
							<img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />

							<h5>Dealer Portal</h5>
						</a>

						<input class="col-md-6 form-control nav-search" placeholder="Search inventory, customers, orders..." type="search" />
					</div>

					<#if is_setup_complete>
						<div class="col-md-4 user-information">
							<svg class="message" fill="none" height="40" viewBox="0 0 40 40" width="40" xmlns="http://www.w3.org/2000/svg"><g fill="#fff"><path d="m22.5 16.9974h-6c-.7002 0-.7002.9994 0 .9994h6c.5996 0 .6992-.9994 0-.9994z"/><path d="m16.5 19.9955h4c.6992 0 .5996.9993 0 .9993h-4c-.7002 0-.7002-.9993 0-.9993z"/><path clip-rule="evenodd" d="m13 13h14c.5996 0 1 .3997 1 .9993v9.9936c0 .5997-.4004.9994-1 .9994h-8.5996l-1.7002 1.6989c-.7002.6995-1.7002.0999-1.7002-.6996v-.9993h-2c-.5996 0-1-.3997-1-.9994v-9.9936c0-.5996.4004-.9993 1-.9993zm1 9.9936h12v-7.9949h-12z" fill-rule="evenodd"/></g></svg>

							<svg class="notification" fill="none" height="40" viewBox="0 0 40 40" width="40" xmlns="http://www.w3.org/2000/svg"><path clip-rule="evenodd" d="m19 12.9735s-5 0-5 9.0075l-1 1.0008c0 2.6897 14 2.7522 14 0l-1-1.0008c0-9.0075-5-9.0075-5-9.0075 0-1.2823-2-1.3136-2 0zm-3 9.683s0-7.6814 4-7.6814 4 7.6814 4 7.6814c-3 .3252-5 .3252-8 0z" fill="#fff" fill-rule="evenodd"/><path d="m17.1094 25.7434c.9531 3.0244 4.8281 2.9931 5.7812 0-1.8906.2409-3.8906.2409-5.7812 0z" fill="#fff"/><circle cx="25" cy="13" fill="#d72323" r="5" stroke="#1d2431" stroke-width="2"/></svg>

							<div class="user-personal-bar">
								<@liferay.user_personal_bar />
							</div>

							<div class="salutation">
								<div>
									<div class="font-weight-medium user-name">
										${user.firstName} ${user.lastName}
									</div>

									<div class="job-title">
										${user.jobTitle}
									</div>
								</div>

								<svg class="d-inline" fill="none" height="32" viewBox="0 0 32 32" width="32" xmlns="http://www.w3.org/2000/svg"><path d="m11.2477 14.7798 4.2721 4.2719c.2825.2824.7439.2824 1.0264 0l4.272-4.2719c.4583-.4582.1349-1.2398-.5148-1.2398h-8.5409c-.6497 0-.973.7816-.5148 1.2398z" fill="#fff" opacity=".75"/></svg>
							</div>
						</div>
					</#if>
				</div>
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

	<footer class="riuvo-demo container-fluid" id="footer" role="contentinfo">
		<div class="row">
			<#include "${full_templates_path}/footer.ftl" />
		</div>
	</footer>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>