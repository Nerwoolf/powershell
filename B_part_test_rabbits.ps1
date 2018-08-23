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
$resultRabbitsNumber = 0
$monthNumber = 0
$smallRabbit = 0
$oldRabbit = 2

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
    

        # Fib increase
            for ($i = 1; $i -le $monthNumber; $i++)

            { 
                # Wolf came
                if(($monthNumber -ge 6) -and ($i%6 -eq 0))
                {
                   
                    $oldRabbit = $oldRabbit/2
              
                }
                 $resultRabbitsNumber = $oldRabbit +$smallRabbit
                 $smallRabbit = $oldRabbit
                 $oldRabbit = $resultRabbitsNumber
              
                 
            }
        
      

       ShowRabbitsInAviary
       

}
until ($monthNumber -gt 0)
Start-Sleep 5  