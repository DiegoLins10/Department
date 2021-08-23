import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import{EmployeeComponent} from './employee/employee.component';
import{DepartmentComponent} from './department/department.component';

/* Path da url */
const routes: Routes = [
{path:'employee', component:EmployeeComponent},
{path: 'department', component:DepartmentComponent},
{path:'Employee', component:EmployeeComponent},
{path: 'Department', component:DepartmentComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
