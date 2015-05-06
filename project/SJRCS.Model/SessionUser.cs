using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.Model
{
    /// <summary>
    /// 位于Session会话中的用户信息对象
    /// </summary>
    public class SessionUser
    {
        private string _userId;

        private string _orgId;

        private string _orgName;

        private string _userNmae;

        private IEnumerable<dynamic> _powers;

        public string OrgName
        {
            get { return _orgName; }
            set { _orgName = value; }
        }

        public IEnumerable<dynamic> Powers
        {
            get { return _powers; }
            set { _powers = value; }
        }


        public string UserName
        {
            get { return _userNmae; }
            set { _userNmae = value; }
        }


        public string OrgId
        {
            get { return _orgId; }
            set { _orgId = value; }
        }


        public string UserId
        {
            get { return _userId; }
            set { _userId = value; }
        }
  
    }
}
