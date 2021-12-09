document.querySelector('.cl')

function check() {
	var c=0;
	var q1=document.quiz.question1.value;
	var q2=document.quiz.question2.value;
	var q3=document.quiz.question3.value;
	var q4=document.quiz.question4.value;
	var q5=document.quiz.question5.value;
	var q6=document.quiz.question6.value;
	var q7=document.quiz.question7.value;
	var q8=document.quiz.question8.value;
	var q9=document.quiz.question9.value;
	var q10=document.quiz.question10.value;
	var hh="/10";

	if (q1=="Bill Russell") {c++}
	if (q2=="23") {c++}
	if (q3=="Bucks de Milwaukee") {c++}
	if (q4=="16") {c++}
	if (q5=="6 juin 1946") {c++}
	if (q6=="Micheal Jordan") {c++}
	if (q7=="Karl Marlone") {c++}
	if (q8=="Ray Allen") {c++}
	if (q9=="Bucks de Milwaukee") {c++}
	if (q10=="Wilt Chamberlain") {c++}
       document.write("Votre score est de &nbsp" +c +hh);

var verif1="<br><b>Question 1:&nbsp <b>Bonne Réponse</b>"
var verif2="<br><b>Question 2:&nbsp <b>Bonne Réponse</b>"
var verif3="<br><b>Question 3:&nbsp <b>Bonne Réponse</b>"
var verif4="<br><b>Question 4:&nbsp <b>Bonne Réponse</b>"



var fau1="<br><b>Question1:&nbsp<b> <b>Dommage La réponse est 'noir'</b>"
var fau2="<br><b>Question 2:&nbsp   <b>Dommage La réponse est 'mk4'</b>"
var fau3="<br><b>Question 3:&nbsp   <b>Dommage la réponse '2jz'</b>"
var fau4="<br><b>Question 4:&nbsp   <b>Dommage La réponse est 'gt'</b>"






 if(q1=="Bill Russell"){
 	document.write(verif1.fontcolor("green"));

 }else{
     document.write(fau1.fontcolor("red"));

 }

if(q2=="23"){
 	document.write(verif2.fontcolor("green"));
 }else{
 	  document.write(fau2.fontcolor("red"));
 }

if(q3=="Bucks de Milwaukee"){
 	document.write(verif3.fontcolor("green"));
 }else{
 	  document.write(fau3.fontcolor("red"));
 }

if(q4=="16"){
 	document.write(verif4.fontcolor("green"));
 }else{
 	  document.write(fau4.fontcolor("red"));
 }

if(q5=="6 juin 1946"){
 	document.write(verif5.fontcolor("green"));
 }else{
 	  document.write(fau5.fontcolor("red"));
 }

if(q6=="Micheal Jordan"){
 	document.write(verif6.fontcolor("green"));
 }else{
 	  document.write(fau6.fontcolor("red"));
 }

if(q7=="Karl Marlone"){
 	document.write(verif7.fontcolor("green"));
 }else{
 	  document.write(fau7.fontcolor("red"));
 }

if(q8=="Ray Allen"){
 	document.write(verif8.fontcolor("green"));
 }else{
 	  document.write(fau8.fontcolor("red"));
 }

if(q9=="Bucks de Milwaukee"){
 	document.write(verif9.fontcolor("green"));
 }else{
 	  document.write(fau9.fontcolor("red"));
 }

if(q10=="Wilt Chamberlain"){
 	document.write(verif10.fontcolor("green"));
 }else{
 	document.write(fau10.fontcolor("red"));
 }





 }
