$TestRecordingFile = Join-Path 'C:\zd\azure-powershell\src\Storage\test' 'Get-AzStorageTable!V1.Recording.json'
. (Join-Path $PSScriptRoot '..\generated\runtime' 'HttpPipelineMocking.ps1')

Describe 'Get-AzStorageTable!V1' {
    It 'TableName' {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'TablePrefix' {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}