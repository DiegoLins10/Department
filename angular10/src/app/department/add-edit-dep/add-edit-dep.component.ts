import { Component, Input, OnInit } from '@angular/core';
import { SharedService } from 'src/app/shared.service';

@Component({
  selector: 'app-add-edit-dep',
  templateUrl: './add-edit-dep.component.html',
  styleUrls: ['./add-edit-dep.component.css']
})
export class AddEditDepComponent implements OnInit {

  constructor(private service:SharedService) { }

  @Input() dep:any;
  IdDepto:string = "";
  NomeDepto:string = "";
  Gerente:string = "";
  Divisao:string = "";
  Local:string = "";

  ngOnInit(): void {
    this.IdDepto=this.dep.IdDepto;
    this.NomeDepto=this.dep.NomeDepto;
    this.Gerente=this.dep.Gerente;
    this.Divisao=this.dep.Divisao;
    this.Local=this.dep.Local;
  }

  addDepartment(){
    var val = {IdDepto:this.IdDepto,
      NomeDepto:this.NomeDepto,
      Gerente:this.Gerente,
      Divisao:this.Divisao,
      Local:this.Local};
    this.service.addDepartment(val).subscribe(res=>{
      alert(res.toString());
    });
  }

  updateDepartment(){
    var val = {IdDepto:this.IdDepto,
      NomeDepto:this.NomeDepto,
      Gerente:this.Gerente,
      Divisao:this.Divisao,
      Local:this.Local};
    this.service.updateDepartment(val).subscribe(res=>{
      alert(res.toString());
    });
  }

}
