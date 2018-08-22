<#
.Synopsis
   A_part_test_rabbits.ps1
.DESCRIPTION
   test task with rabbits counting, at first we have pair of young rabbits
.EXAMPLE
   Example of how to use this cmdlet
.EXAMPLE
   Another example of how to use this cmdlet
#>

# Define variables

$resultRabbitsNumber
$monthNumber = 0
$previousRabbitsNumber = 0
$currentRabbitsNumber = 2

# Function print content of $monthNumber and $resultRabbitsNumber variables.

function ShowRabbitsInAviary ()
{
    "After {0} month in aviary will be {1} rabbits" -f $monthNumber, $resultRabbitsNumber
}

# End function 

# Let's define cycle to get correct input not less than 1 month
do
{
    try
    {
        [int]$monthNumber = Read-Host "Write any number greater or equal 0"

    }

    catch 
    {
        Write-Host "You have to write a number, not a string or other variable type!"
    }
    

        
            for ($i = 0; $i -lt $monthNumber; $i++)

            { 
            
                 $resultRabbitsNumber = $currentRabbitsNumber +$previousRabbitsNumber
                 $previousRabbitsNumber = $currentRabbitsNumber
                 $currentRabbitsNumber = $resultRabbitsNumber
                
                 
            }
        
      

       ShowRabbitsInAviary
       

}
until ($monthNumber -gt 0)
Start-Sleep 5  