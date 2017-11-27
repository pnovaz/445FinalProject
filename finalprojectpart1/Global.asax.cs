using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace finalprojectpart1
{
    public class Global : HttpApplication
    {
		public static int globalCounter;
		private static object aLock = new object();

        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

			globalCounter = 0;
        }

		/*void Session_Start(object sender, EventArgs e)
		{
			increment();
		}*/

		public static void increment()
		{
			lock(aLock)
			{
				globalCounter += 1;
			}
		}
    }
}