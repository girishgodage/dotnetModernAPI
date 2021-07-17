﻿using System.Net;

namespace Modern.Common
{
    public class BadRequestResponse : ApiResponse
    {
        public BadRequestResponse()
            : base(400, HttpStatusCode.BadRequest.ToString())
        {
        }


        public BadRequestResponse(string message)
            : base(400, HttpStatusCode.BadRequest.ToString(), message)
        {
        }
    }
}
