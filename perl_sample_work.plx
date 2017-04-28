use warnings;
use strict;
use encoding 'utf8';

sub totalOneToNumber{
	my $total = 0;
	my ($number);
	my $result = 0;
	for(my $i=0;$i<10;$i++){
		$total += $i;
	}
	return $total;
}

sub sortArray{
	my (@array) = @_;
	my $arraySize = scalar @array;
	for(my $i=0;$i<$arraySize-1;$i++){
	   for(my $j = $i+1;$j<$arraySize;$j++){
		if($array[$i]>$array[$j]){
			my $temp = $array[$i];
			$array[$i] = $array[$j];
			$array[$j] = $temp;
		}
	   }
	}
	return @array;
}

sub printArray{
	my (@array) = @_;
	my $arraySize = scalar @array;
	for(my $i=0;$i<$arraySize;$i++){
		print $array[$i]." ";
	}
}

sub lastOperation{
	my @array = (-4,2,5,-7,87,-92);
	my @sortedArray = sortArray(@array);

	print "Dizi ===> ";
	printArray(@array);
	print "\n";
	print "Siralanmis dizi ===> ";
	printArray(@sortedArray);
	print "\n";
	print "Toplam : ".totalOneToNumber(10);
	print "\n";
}

lastOperation();

