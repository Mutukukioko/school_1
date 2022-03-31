<?php
require('fpdf/fpdf.php');
require('connect.php');
session_start();
$regno=$_SESSION['login_user'];

if($conn==true){
  $result = mysqli_query($conn,"SELECT * FROM examcard where regno='$regno'");
 $num=mysqli_num_rows($result);
if($num==0){
echo"student has not registered for exams";
}else{
    while($row=mysqli_fetch_object($result)){
        $name=$row->name;
        $regno=$row->regno;
        $unit=$row->unit_code;
        $stage=$row->stageid;
        $unitname=$row->unit_name;
        $coursename=$row->course_name;
      }
$pdf=new fpdf('p','mm','A4');
$pdf-> Addpage();
$pdf->SetFont('Times','BU',15);
    $pdf->cell(200,5,'MASENO UNIVERSITY',0,1,'C');
    $pdf->cell(200,5,'SCHOOL OF COMPUTING AND INFORMATICS',0,1,'C');
    $pdf->cell(200,5,'Department Of Computer Science',0,1,'C');
    $pdf->Ln(5);
    $pdf->cell(40,10,'NAME :',0,0);
    $pdf->SetFont('Times','',15);
    $pdf->cell(25,10,$name,0,1);
    $pdf->SetFont('Times','B',15);
    $pdf->cell(200,5,'REGISTRATION NUMBER:',0,1);
    $pdf->SetFont('Times','',15);
    $pdf->cell(25,10,$regno,0,1);
    $pdf->SetFont('Times','B',15);
    $pdf->cell(40,10,'YEAR :',0,0);
    $pdf->SetFont('Times','',15);
    $pdf->cell(25,10,$stage,0,1);
    $pdf->SetFont('Times','B',15);
    $pdf->SetFont('Times','',15);
    $pdf->cell(40,10,'COURSE :',0,0);
    $pdf->SetFont('Times','',15);
    $pdf->cell(25,10,$coursename,0,1);
    $pdf->SetFont('Times','B',15);
    $pdf->Ln(10);

    $width_cell=array(50,100,30);
$pdf->SetFillColor(193,229,252); // Background color of header
// Header starts ///
$pdf->Cell($width_cell[0],10,'CODE',1,0,'C',true); // First header column
$pdf->Cell($width_cell[1],10,'NAME',1,0,'C',true); // Second header column
$pdf->Cell($width_cell[2],10,'SIGN',1,0,'C',true); // Third header column
$pdf->Ln(10);
$pdf->Cell($width_cell[0],10,"$unit",1,0,'C',false); // First column of row 1
$pdf->Cell($width_cell[1],10,"$unitname",1,0,'C',false); // Second column of row 1
$pdf->Cell($width_cell[2],10,"",1,0,'C',false); // Third column of row 1
$pdf->Ln(10);
//// header is over ///////

    $pdf->SetFont('Times','BI',15);
    $pdf->cell(60,10,'STUDENTS SIGNATURE  .............................................................',0,1);
    $pdf->cell(60,10,'TUTOR DR. KAMAU.',0,1);
    $pdf->Output();

}

}























?>
