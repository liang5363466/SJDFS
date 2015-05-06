using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Text;

namespace SJRCS.Common
{
    /// <summary>
    /// 动态生成类
    /// </summary>
    public class Dynamic:DynamicObject
    {
        private Dictionary<string, object> _data = new Dictionary<string, object>();
       
        public Dynamic()
        {

        }
        public Dynamic(Dictionary<string, object>  dynamicData)
        {
            this._data = dynamicData;
        }

        public Dictionary<string, object> Data
        {
            get
            {
                return _data;
            }
            set 
            {
                _data = value;
            }
        }

        public override bool TryGetMember(GetMemberBinder binder, out object result)
        {
            bool success = false;
            result = null;
            if (_data.ContainsKey(binder.Name))
            {
                result = _data[binder.Name];
                success = true;
            }
            else
            {
                result = "Property Not Found!";
                success = false;
            }
            return success;
        }

        public override bool TrySetMember(SetMemberBinder binder, object value)
        {
            _data[binder.Name] = value;
            return true;
        }

        public override bool TryInvokeMember(InvokeMemberBinder binder, object[] args, out object result)
        {
            dynamic method = _data[binder.Name];
            result = method((DateTime)args[0]);
            return result != null;
        }
    }
}
