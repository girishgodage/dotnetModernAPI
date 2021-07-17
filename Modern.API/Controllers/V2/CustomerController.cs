using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Modern.API.Filters;
using Modern.Common;
using Modern.Repository;
using Modern.ViewModel.Customers.Request;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Modern.API.Controllers.V2
{
    [Authorize(Roles = "User")]
    [Route("api/Customer")]
    [ApiVersion("2.0")]
    [ApiController]
    public class CustomerController : ControllerBase
    {
        readonly IUnitOfWorkDapper _unitOfWorkDapper;

        public CustomerController(IUnitOfWorkDapper iUnitOfWorkDapper)
        {
            _unitOfWorkDapper = iUnitOfWorkDapper;
        }

        [Route("Create")]
        [HttpPost]
        [MapToApiVersion("2.0")]
        [ValidateModel]
        public IActionResult Create([FromBody] CustomersRequest customersRequest)
        {
            _unitOfWorkDapper.CustomersCommand.Add(customersRequest, 1);
            var result = _unitOfWorkDapper.Commit();

            if (result)
            {
                return Ok(new OkResponse("Movies Added Successfully !"));
            }
            else
            {
                return StatusCode(StatusCodes.Status500InternalServerError, "Something Went Wrong");
            }
        }
    }
}

