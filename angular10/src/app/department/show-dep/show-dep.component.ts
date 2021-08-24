import { Component, OnInit } from '@angular/core';
import  {SharedService} from 'src/app/shared.service'

@Component({
  selector: 'app-show-dep',
  templateUrl: './show-dep.component.html',
  styleUrls: ['./show-dep.component.css']
})
export class ShowDepComponent implements OnInit {

  constructor(private service:SharedService) { }

  DepartmentList:any=[];

  ngOnInit(): void {
    this.refreshDepList();
  }

  /* atualizar a lista de departamento
  usando o metodo subscribe com um assincrona operacao
   */
  refreshDepList(){
    this.service.getDepList().subscribe(data=>{
      this.DepartmentList = data;
    })
  }

}
