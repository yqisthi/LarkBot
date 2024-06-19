$appId = "cli_a55d512fc1b89009"  # Replace with your actual App ID
$appSecret = "qcHDwRHkauNFLLoG3YKsZbMuKo74Ucor"  # Replace with your actual App Secret
$body = @{
    app_id = $appId
    app_secret = $appSecret
} | ConvertTo-Json

$response = Invoke-RestMethod -Uri "https://open.larksuite.com/open-apis/auth/v3/app_access_token/internal/" -Method Post -ContentType "application/json" -Body $body

$response
