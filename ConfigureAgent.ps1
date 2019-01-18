
$url = $env:TFS_URL
$token = $env:TFS_PAT
$pool = $env:TFS_POOL_NAME
$agentName = $env:TFS_AGENT_NAME

Write-Verbose -Verbose "Configuring agent $agentName for pool $pool"

.\config.cmd --unattended `
            --url $url  `
            --auth pat  `
            --token $token  `
            --pool $pool  `
            --agent $agentName  `
            --acceptteeeula `
            --replace `
            --gituseschannel

.\run.cmd
