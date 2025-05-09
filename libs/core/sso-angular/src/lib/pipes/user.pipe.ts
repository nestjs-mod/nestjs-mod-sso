import { Pipe, PipeTransform } from '@angular/core';
import { map } from 'rxjs';
import { SsoService } from '../services/auth.service';

@Pipe({
  name: 'user',
  pure: true,
  standalone: true,
})
export class UserPipe implements PipeTransform {
  constructor(private readonly authService: SsoService) {}

  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  public transform(value: any) {
    return this.authService.profile$.pipe(map((profile) => profile || value));
  }
}
