import { NikosApi } from './client';

const api = new NikosApi();
api.createNikos(
  { mood: 'good', date: '2023-04-23' },
  {
    headers: {
      uid: 'test@example.com',
      client: 'sGUVURNUEEtoLsyuaSkcgQ',
      'access-token': 'repSt6lk93z6usEH-57PSA'
    }
  }
).then(res => console.log(res.data));
