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
                
        [Int]$firstTriangSide,

        # set second side
        [int]$secondTriangSide,

        # set third sie
        [int]$thirdTriangSide
    
        )
       
# Check parameters for positive number
    if($firstTriangSide,$secondTriangSide,$thirdTriangSide -le 0)
          {
                   
           Write-Host "Sides should not to be less or equal 0"
           exit

          }


# Main program logic 
# Check for equilateral Triangle   
    if ($firstTriangSide -eq $secondTriangSide -and $secondTriangSide -eq $thirdTriangSide)
        {
            Write-host "Triangle is equilateral "
        }
# Check for isoceles Triangle
    elseif(($firstTriangSide -eq $secondTriangSide) -or ($firstTriangSide -eq $thirdTriangSide) -or ($secondTriangSide -eq $thirdTriangSide))
    {
        Write-Host "Triangle is isosceles"
    }

# if other False Versatile Triangle
    else
    {
        Write-Host "Triangle is versatile"
    }
 


   


   
