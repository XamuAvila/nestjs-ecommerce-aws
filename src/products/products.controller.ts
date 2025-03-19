import { Controller, Get } from '@nestjs/common';

@Controller('api/products')
export class ProductsController {
  @Get()
  getAllProducts(): string {
    console.info('get all products');
    return 'get all products';
  }
}
