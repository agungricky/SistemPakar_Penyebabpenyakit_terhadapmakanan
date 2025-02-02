@extends('website.main.index')

@section('content')

<div class="container-fluid">
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Data Makanan</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Kode Makanan</th>
                            <th>Nama Makanan</th>
                            <th>Kandungan</th>
                            <th>Nilai CF</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($datamakanan as $makanan)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $makanan->KodeMakanan }}</td>
                            <td>{{ $makanan->NamaMakanan }}</td>
                            <td>{{ $makanan->Kandungan }}</td>
                            <td>{{ $makanan->Nilai_CF }}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

@endsection
