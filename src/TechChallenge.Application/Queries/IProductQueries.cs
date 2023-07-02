﻿using TechChallenge.Domain.Entities;

namespace TechChallenge.Application.Queries;
public interface IProductQueries
{
    Task<Product?> GetByIdAsync(Guid productId, CancellationToken cancellationToken = default);

    Task<List<Product>> GetAllAsync(CancellationToken cancellationToken = default);
}
