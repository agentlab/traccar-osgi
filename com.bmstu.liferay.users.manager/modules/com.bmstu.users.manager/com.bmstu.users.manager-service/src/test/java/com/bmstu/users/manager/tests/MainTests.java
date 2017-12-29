package com.bmstu.users.manager.tests;

import org.junit.Assert;
import org.junit.ClassRule;
import org.junit.Rule;
import org.junit.Test;

import com.bmstu.users.manager.service.TraccarUserLocalService;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.service.ServiceContext;
import com.liferay.portal.kernel.test.rule.AggregateTestRule;
import com.liferay.portal.test.rule.Inject;
import com.liferay.portal.test.rule.LiferayIntegrationTestRule;

/**
 * 
 * Traccar user manager tests
 * 
 * @author Mosin
 *
 */
public class MainTests {

	@ClassRule
	@Rule
	public static final AggregateTestRule aggregateTestRule = new LiferayIntegrationTestRule();

	public static TraccarUserLocalService traccarUserLocalService;

	@Test
	public void addUserTest() throws PortalException {
		System.out.println("Tested");
		traccarUserLocalService.addTraccarUser(0, "Name", "Password", "Email", new ServiceContext());
	}

}
