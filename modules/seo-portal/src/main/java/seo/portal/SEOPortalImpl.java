package seo.portal;

import com.liferay.layouts.admin.kernel.util.Sitemap;
import com.liferay.portal.kernel.model.Layout;
import com.liferay.portal.kernel.theme.ThemeDisplay;
import com.liferay.portal.kernel.util.Portal;
import com.liferay.portal.util.PortalImpl;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.osgi.service.component.annotations.Component;

@Component(
		immediate = true,
		property = {"service.ranking:Integer=100"},
		service = Portal.class
	)
public class SEOPortalImpl extends PortalImpl {
	

	@Override
	public Map<Locale, String> getAlternateURLs(
			String canonicalURL, ThemeDisplay themeDisplay, Layout layout) {
		
		return new HashMap<>();
	}
		
	@Override
	public void addPageSubtitle(String subtitle, HttpServletRequest request) {
		
	}
	
	@Override
	public String getPortletTitle(String portletId, Locale locale) {
		return "JOe schmoe";
	}
	
}