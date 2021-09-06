import { Component, Input, OnInit } from '@angular/core';
import { SharedService } from 'src/app/shared.service';

@Component({
  selector: 'app-add-edit-emp',
  templateUrl: './add-edit-emp.component.html',
  styleUrls: ['./add-edit-emp.component.css']
})
export class AddEditEmpComponent implements OnInit {

  constructor(private service:SharedService) { }

  @Input() emp:any;
  IdEmpregado:string = "";
  NomeEmpregado:string = "";
  IdDepto:string = "";
  Cargo:string = "";
  Tempo_Emp:string = "";
  Salario:string = "";
  Comissao:string = "";
  DateOfJoining:string = "";
  PhotoFileName:string = "";
  PhotoFilePath:string = "";

  DepartmentsList:any=[];

  ngOnInit(): void {
   this.loadDepartmentList()
  }

  loadDepartmentList(){
    this.service.getAllDepartmentNames().subscribe((data:any)=> {
      this.DepartmentsList=data;

      this.IdEmpregado=this.emp.IdEmpregado;
      this.NomeEmpregado=this.emp.NomeEmpregado;
      this.IdDepto=this.emp.IdDepto;
      this.Cargo=this.emp.Cargo;
      this.Salario=this.emp.Salario;
      this.DateOfJoining=this.emp.DateOfJoining;
      this.PhotoFileName=this.emp.PhotoFileName;
      this.PhotoFilePath=this.service.PhotoUrl+this.PhotoFileName;
    });
  }

  /* metodo para add/ ligar a interface com os metodos 
  da api*/
  addEmployee(){
    var val = {IdEmpregado:this.IdEmpregado,
                NomeEmpregado:this.NomeEmpregado,
                IdDepto:this.IdDepto.substring(0,3).trim(),
                Cargo:this.Cargo,
                Salario:this.Salario,
                DateOfJoining:this.DateOfJoining,
                PhotoFileName:this.PhotoFileName
                };
    this.service.addEmployee(val).subscribe(res=>{
      alert(res.toString());
    });
  }

  /* metodo para update/ ligar a interface com os metodos 
  da api*/
  updateEmployee(){
    var val = {IdEmpregado:this.IdEmpregado,
      NomeEmpregado:this.NomeEmpregado,
      IdDepto:this.IdDepto.substring(0,3).trim(),
      Cargo:this.Cargo,
      Salario:this.Salario,
      DateOfJoining:this.DateOfJoining,
      PhotoFileName:this.PhotoFileName};

    this.service.updateEmployee(val).subscribe(res=>{
    alert(res.toString());
    });
  }

  /* metodo para uploaded a foto e ligar a interface com os metodos 
  da api*/
  uploadPhoto(event: any){
    var file=event.target.files[0];
    const formData:FormData=new FormData();
    formData.append('uploadedFile',file,file.name);

    this.service.uploadPhoto(formData).subscribe((data:any)=>{
      this.PhotoFileName=data.toString();
      this.PhotoFilePath=this.service.PhotoUrl+this.PhotoFileName;
    })
  }

}
