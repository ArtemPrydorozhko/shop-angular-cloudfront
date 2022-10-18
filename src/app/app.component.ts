import { ChangeDetectionStrategy, Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class AppComponent implements OnInit {
  ngOnInit(): void {
    const authorizationToken = window.btoa('ArtemPrydorozhko:TEST_PASSWORD');
    window.localStorage.setItem('authorization_token', authorizationToken);
  }
}
