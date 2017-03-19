using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iis_demo
{
    public partial class Default : System.Web.UI.Page
    {
        protected string Env1
        {
            get
            {
                return ConfigurationManager.AppSettings["env1"];
            }
        }

        protected string Env2
        {
            get
            {
                return Environment.GetEnvironmentVariable("env2") ?? "Dev";
            }
        }

        protected string Hosts
        {
            get
            {
                return File.ReadAllText(@"C:\Windows\System32\drivers\etc\hosts");
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}