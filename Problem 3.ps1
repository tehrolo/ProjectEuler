<# Largest Prime Factor
The prime factors of 13195 are 5, 7, 13, and 29.
pro
What is the largest prime factor of the number 600851475143 ?
#>

function isPrime($fact) {
    $primeFactors = @()
    foreach($factor in $fact) {
        for($i=2; $i -lt [math]::Sqrt($factor); $i++) {
            $res = $true
            if(!($factor % $i -eq 0)) { 
                $res = $false
            }
            if($res -eq $true) {
                if($primeFactors -notcontains $i) {
                    $primeFactors += $i
                }
            }
        }
    }
    return $primeFactors
}
function showFactors($num) {
    $factors = @()
    for($i=3; $i -lt (($num/2)+1); $i++) {
        if(!($num % 2 -eq 0)) {
            if($num % $i -eq 0) { 
                $factors += $i 
            }
        }
    }
    return $factors
}
isPrime(showFactors(600851475143))
