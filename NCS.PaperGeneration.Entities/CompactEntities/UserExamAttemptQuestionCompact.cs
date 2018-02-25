﻿using NCS.PaperGeneration.Entities.CommonEntities;
using NCS.PaperGeneration.Entities.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NCS.PaperGeneration.Entities.CompactEntities
{
    public class UserExamAttemptQuestionCompact : AuditableEntity<UserExamAttemptQuestion>
    {
        public int UserExamId { get; set; }
        public int QuestionId { get; set; }
        public int ChoiceId { get; set; }
    }
}
