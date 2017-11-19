using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(finalprojectpart1.Startup))]
namespace finalprojectpart1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
