<#
.Synopsis
   Checking triangle
.DESCRIPTION
   In this script we will check the type of triangle.
.EXAMPLE
  Checking_triangle.ps1  2 2 3 
#>

#Get parameters
    Param
        (
        # set first side
                
        [Int]$a,

        # set second side
        [int]$b,

        # set third sie
        [int]$c
    
        )
       
# Check parameters for positive number
    if($a,$b,$c -le 0 )
          {
                   
           Write-Host "Sides should not to be less or equal 0"
           exit

          }


# Main program logic 
# Check for equilateral Triangle   
    if ($a -eq $b -and $b -eq $c)
        {
            Write-host "Triangle is equilateral "
        }
# Check for isoceles Triangle
    elseif(($a -eq $b) -or ($a -eq $c) -or ($b -eq $c))
    {
        Write-Host "Triangle is isosceles"
    }
    elseif((($b+$c) -lt $a) -or (($a+$c) -lt $b)`
    -or (($a+$b)) -lt $c)
    {
        Write-Host "it’s not a triangle"
    }
# if other False Versatile Triangle
    else
    {
        Write-Host "Triangle is versatile"
    }
 


   


   
