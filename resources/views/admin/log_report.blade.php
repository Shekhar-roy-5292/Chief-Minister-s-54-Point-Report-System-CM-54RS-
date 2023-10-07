@extends('admin.layouts.master')


@section('title')
    Admin Dashboard
@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title"> Log Report</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table">
                            <thead class=" text-primary">
                                <th>
                                    Menu
                                </th>
                                <th>
                                    Updated by
                                </th>
                                <th>
                                    Updated on
                                </th>

                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        Kishan Credit Card
                                    </td>
                                 
                                        <td>{{ $logKCC->name }}</td>
                                        <td>{{ $logKCC->posted_date}}</td>
                                 

                                </tr>
                                <tr>
                                    <td>
                                        Kishan Mandi
                                    </td>
                                   
                                        <td>{{ $logKM->name }}</td>
                                        <td>{{ $logKM->posted_date}}</td>
                                 
                                </tr>
                                <tr>
                                    <td>
                                        Anandadhara
                                    </td>
                                    
                                        <td>{{ $logAnandadhara->name }}</td>
                                        <td>{{ $logAnandadhara->posted_date}}</td>
                                  
                                </tr>

                                <tr>
                                    <td>
                                        Mgnregs
                                    </td>



                                        <td>{{ $logMgnregs->name }}</td>
                                        <td>{{ $logMgnregs->posted_date }}</td>
                                    
                                </tr>







                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    @endsection

    @section('scripts')
    @endsection
