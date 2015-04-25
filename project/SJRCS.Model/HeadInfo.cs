using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SJRCS.Model
{
    public class HeadInfo
    {
        private string _name;
        private int _pointX;
        private int _pointY;

        public HeadInfo(string name,int pointY,int pointX)
        {
            this._name = name;
            this._pointX = pointX;
            this._pointY = pointY;
        }

        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }

        public int PointX
        {
            get { return _pointX; }
            set { _pointX = value; }
        }

        public int PointY
        {
            get { return _pointY; }
            set { _pointY = value; }
        }

    }
}
