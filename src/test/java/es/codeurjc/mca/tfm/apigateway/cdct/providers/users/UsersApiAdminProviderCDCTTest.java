package es.codeurjc.mca.tfm.apigateway.cdct.providers.users;

import au.com.dius.pact.provider.junitsupport.Provider;
import au.com.dius.pact.provider.junitsupport.State;
import es.codeurjc.mca.tfm.apigateway.cdct.providers.AbstractBaseProviderCDCTTest;
import org.junit.jupiter.api.DisplayName;

@Provider("UsersApiAdminV1Provider")
@DisplayName("Users API admin resources provider CDCT tests")
public class UsersApiAdminProviderCDCTTest extends AbstractBaseProviderCDCTTest {

  @Override
  protected String getUrl() {
    return this.usersUrl;
  }

  @State({"An administrator"})
  public void existentAdminState() throws Exception {
    if (ADMIN_ID == null) {
      this.createAdmin();
    }
  }

  @State({"A non-existent admin"})
  public void nonExistentAdminState() {
  }

}
