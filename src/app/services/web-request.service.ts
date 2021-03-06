import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class WebRequestService {

  readonly ROOT_URL;

  constructor(private http: HttpClient) { 
    this.ROOT_URL = "http://localhost:5167/api";
  }

  get(uri : string){
    return this.http.get(`${this.ROOT_URL}/${uri}`);
  }

  search(uri : string){
    console.log(`${this.ROOT_URL}/${uri}`)
    return this.http.get(`${this.ROOT_URL}/${uri}`);
  }

  post(uri : string, payload: Object){
    return this.http.post(`${this.ROOT_URL}/${uri}`, payload)
  }

  patch(uri : string, payload: Object){
    return this.http.post(`${this.ROOT_URL}/${uri}`, payload)
  }

  delete(uri : string){
    return this.http.delete(`${this.ROOT_URL}/${uri}`);
  }

  put(uri : string, payload: Object){
    console.log(payload);
    return this.http.put(`${this.ROOT_URL}/${uri}`, payload);
  }
}
