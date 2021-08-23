import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class SharedService {
readonly APIUrl = "http://localhost:5000/api";
readonly PhotoUrl = "http://localhost:5000/Photos"

  constructor(private http:HttpClient) { }

  /* METODOS PARA AS OPERACOES NA TABLE DEPARTMENT*/
  getDepList():Observable<any[]>{
    return this.http.get<any>(this.APIUrl + '/department');
  }

  addDepartment(val:any){
    return this.http.post(this.APIUrl + '/Department', val);
  }

  updateDepartment(val:any){
    return this.http.put(this.APIUrl + '/Department', val);
  }

  deleteDepartment(val:any){
    return this.http.delete(this.APIUrl + '/Department/', val);
  }

  /* METODOS PARA AS OPERACOES NA TABLE EMPLOYEE */
  getEmpList():Observable<any[]>{
    return this.http.get<any>(this.APIUrl + '/Employee');
  }

  addEmployee(val:any){
    return this.http.post(this.APIUrl + '/Employee', val);
  }

  updateEmployee(val:any){
    return this.http.put(this.APIUrl + '/Employee', val);
  }

  deleteEmployee(val:any){
    return this.http.delete(this.APIUrl + '/Employee/', val);
  }

  /* METODO PARA SALVAR AS PROFILES PICTURES */
  UploadPhoto(val:any){
    return this.http.post(this.APIUrl + '/Employee/SaveFile', val);
  }

  /* PEGAR O NOME DE TODOS OS DEPARTAMENTOS */
  getAllDepartmentNames():Observable<any[]>{
    return this.http.get<any[]>(this.APIUrl+'/Employee/GetAllDepartmentNames');
  }
}
