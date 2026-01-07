$Array1 = [int[]]@(1,2,3)
$Array2 = [int[]]@(4,5,6)

$Array3 = @(
	($Array1[0] + $Array2[0]),
	($Array1[1] + $Array2[1]),
	($Array1[2] + $Array2[2])
)

echo "Array1: $Array1"
echo "Array2: $Array2"
echo "Array3: $Array3"