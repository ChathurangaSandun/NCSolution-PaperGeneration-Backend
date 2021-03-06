﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NCS.PaperGeneration.Entities.CompactEntities
{
    using NCS.PaperGeneration.Entities.CommonEntities;

    /// <summary>
    /// The exam compact.
    /// </summary>
    public class ExamCompact : AuditableEntity<int>
    {
        public int AlgorithmId { get; set; }
    }
}
