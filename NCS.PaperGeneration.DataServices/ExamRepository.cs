﻿// --------------------------------------------------------------------------------------------------------------------
// <copyright file="ExamRepository.cs" company="">
//   
// </copyright>
// <summary>
//   Defines the ExamRepository type.
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace NCS.PaperGeneration.DataServices
{
    using System.Linq;

    using NCS.PaperGeneration.Entities.Entities;
    using NCS.PaperGeneration.IDataServices;
    using NCS.PapperGeneration.DataService.Common;

    public class ExamRepository : GenericRepository<Exam>, IExamRepository
    {
        public ExamRepository(PaperGenerationDbContext context)
            : base(context)
        {
        }
    }
}
