<#[
.SYNOPSIS
    Sample Codepic CLI tasks.
.DESCRIPTION
    Provides reference tasks used for demonstrations and regression testing of the Codepic CLI infrastructure.
.PARAMETER Who
    The name or phrase that should be greeted when running `sample say-hello`.
.PARAMETER RestArgs
    Overflow arguments forwarded from `.build.ps1`; ignored by this sample module.
.EXAMPLE
    codepic sample say-hello -Who "Codepic"
.EXAMPLE
    codepic sample say-hello
#>
[CmdletBinding()]
param (
    [Parameter(Mandatory = $false)]
    [ValidateNotNullOrEmpty()]
    [string]
    $Who = 'World',

    [Parameter(Mandatory = $false, ValueFromRemainingArguments = $true)]
    $RestArgs
)

begin {
    # This module currently operates without shared state across tasks.
    $null = $RestArgs
}

process {
    <#
        .SYNOPSIS
            Outputs a friendly greeting....
        .DESCRIPTION
            Demonstrates a minimal task implementation by writing a green greeting to the console.
            This task is designed to showcase the basic structure and functionality of a Codepic CLI task.
        .PARAMETER Who
            The recipient of the greeting message.
        .EXAMPLE
            codepic sample say-hello -Who "PowerShell"
    #>
    task say-hello {
        Write-Build Green "SAMPLE: Hello, $Who!"
    }
}

end {

}
