using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Autofac;
using SJRCS.BLL;
using SJRCS.DAL;
namespace SJRCS.Web.Common
{
	public class BootStrapper
	{
        public static IContainer AutofacContainer;
        public static void Run()
        {
            SetAutofacContainer();
        }
        /// <summary>
        /// 初始化IOC容器
        /// </summary>
        private static void SetAutofacContainer()
        {
            ContainerBuilder builder = new ContainerBuilder();
            builder.RegisterAssemblyTypes(typeof(RCS_UserBLL).Assembly)
                .Where(t => t.Name.EndsWith("BLL"))
                .AsImplementedInterfaces().InstancePerLifetimeScope();
            builder.RegisterAssemblyTypes(typeof(RCS_UserDAL).Assembly)
                .Where(t => t.Name.EndsWith("DAL"))
                .AsImplementedInterfaces().InstancePerLifetimeScope();
            AutofacContainer = builder.Build();
        }
	}
}