using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace NFS.UI
{


    public interface IController<T>
    {
        T Controller { get; }
    }
}
