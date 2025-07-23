using backend.src.Domain.Entities;

namespace backend.src.Application.Interfaces;


public interface ICartEventService
{
    Task CreateCartEventAsync(CartEvent cartEvent);
}
