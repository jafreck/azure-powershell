@{
# region definition 
  RootModule = './Az.Network.psm1'
  ModuleVersion = '0.0.1'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = 'Microsoft Corporation'
  CompanyName = 'Microsoft Corporation'
  Copyright = 'Microsoft Corporation. All rights reserved.'
  Description = 'Microsoft Azure PowerShell: Network cmdlets'
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/Az.Network.private.dll'
  FormatsToProcess = './Az.Network.format.ps1xml'
# endregion 

# region persistent data 
  GUID = '4ff17caf-76fc-409a-2e23-b96989751cb1'
# endregion 

# region private data 
  PrivateData = @{
    PSData = @{
      Tags = 'Azure', 'ResourceManager', 'ARM', 'Network'
      LicenseUri = 'https://aka.ms/azps-license'
      ProjectUri = 'https://github.com/Azure/azure-powershell'
      ReleaseNotes = ''
      Profiles = 'latest-2019-04-30', 'hybrid-2019-03-01'
    }
  }
# endregion 

# region exports
  CmdletsToExport = 'Get-AzApplicationGateway', 'Get-AzApplicationGatewayAvailableRequestHeader', 'Get-AzApplicationGatewayAvailableResponseHeader', 'Get-AzApplicationGatewayAvailableServerVariable', 'Get-AzApplicationGatewayAvailableSslOption', 'Get-AzApplicationGatewayAvailableSslPredefinedPolicy', 'Get-AzApplicationGatewayAvailableWafRuleSet', 'Get-AzApplicationGatewaySslPredefinedPolicy', 'Get-AzApplicationSecurityGroup', 'Get-AzAvailableDelegation', 'Get-AzAvailableEndpointService', 'Get-AzAvailableResourceGroupDelegation', 'Get-AzAzureFirewall', 'Get-AzAzureFirewallFqdnTag', 'Get-AzBgpServiceCommunity', 'Get-AzConnectionMonitor', 'Get-AzDdoProtectionPlan', 'Get-AzDdosCustomPolicy', 'Get-AzDdosProtectionPlan', 'Get-AzDefaultSecurityRule', 'Get-AzExpressRouteCircuit', 'Get-AzExpressRouteCircuitArpTable', 'Get-AzExpressRouteCircuitAuthorization', 'Get-AzExpressRouteCircuitConnection', 'Get-AzExpressRouteCircuitPeering', 'Get-AzExpressRouteCircuitPeeringStat', 'Get-AzExpressRouteCircuitRouteTable', 'Get-AzExpressRouteCircuitRouteTableSummary', 'Get-AzExpressRouteCircuitStat', 'Get-AzExpressRouteConnection', 'Get-AzExpressRouteCrossConnection', 'Get-AzExpressRouteCrossConnectionArpTable', 'Get-AzExpressRouteCrossConnectionPeering', 'Get-AzExpressRouteCrossConnectionRouteTable', 'Get-AzExpressRouteCrossConnectionRouteTableSummary', 'Get-AzExpressRouteGateway', 'Get-AzExpressRouteLink', 'Get-AzExpressRoutePort', 'Get-AzExpressRoutePortsLocation', 'Get-AzExpressRouteServiceProvider', 'Get-AzHubVirtualNetworkConnection', 'Get-AzInboundNatRule', 'Get-AzInterfaceEndpoint', 'Get-AzLoadBalancer', 'Get-AzLoadBalancerBackendAddressPool', 'Get-AzLoadBalancerFrontendIPConfiguration', 'Get-AzLoadBalancerLoadBalancingRule', 'Get-AzLoadBalancerNetworkInterface', 'Get-AzLoadBalancerOutboundRule', 'Get-AzLoadBalancerProbe', 'Get-AzLocalNetworkGateway', 'Get-AzNatGateway', 'Get-AzNetworkInterface', 'Get-AzNetworkInterfaceEffectiveNetworkSecurityGroup', 'Get-AzNetworkInterfaceEffectiveRouteTable', 'Get-AzNetworkInterfaceIPConfiguration', 'Get-AzNetworkInterfaceLoadBalancer', 'Get-AzNetworkInterfaceTapConfiguration', 'Get-AzNetworkInterfaceVirtualMachineScaleSetIPConfiguration', 'Get-AzNetworkInterfaceVirtualMachineScaleSetNetworkInterface', 'Get-AzNetworkInterfaceVirtualMachineScaleSetVMNetworkInterface', 'Get-AzNetworkProfile', 'Get-AzNetworkSecurityGroup', 'Get-AzNetworkWatcher', 'Get-AzNetworkWatcherAvailableProvider', 'Get-AzNetworkWatcherAzureReachabilityReport', 'Get-AzNetworkWatcherFlowLogStatus', 'Get-AzNetworkWatcherNetworkConfigurationDiagnostic', 'Get-AzNetworkWatcherNextHop', 'Get-AzNetworkWatcherTopology', 'Get-AzNetworkWatcherTroubleshooting', 'Get-AzNetworkWatcherTroubleshootingResult', 'Get-AzNetworkWatcherVMSecurityRule', 'Get-AzP2SVpnGateway', 'Get-AzP2SVpnServerConfiguration', 'Get-AzPacketCapture', 'Get-AzPacketCaptureStatus', 'Get-AzPeerExpressRouteCircuitConnection', 'Get-AzPublicIPAddress', 'Get-AzPublicIPAddressVirtualMachineScaleSetPublicIPAddress', 'Get-AzPublicIPAddressVirtualMachineScaleSetVMPublicIpaddress', 'Get-AzPublicIPPrefix', 'Get-AzRoute', 'Get-AzRouteFilter', 'Get-AzRouteFilterRule', 'Get-AzRouteTable', 'Get-AzSecurityRule', 'Get-AzServiceEndpointPolicy', 'Get-AzServiceEndpointPolicyDefinition', 'Get-AzSubnet', 'Get-AzUsage', 'Get-AzVirtualHub', 'Get-AzVirtualNetwork', 'Get-AzVirtualNetworkGateway', 'Get-AzVirtualNetworkGatewayAdvertisedRoute', 'Get-AzVirtualNetworkGatewayBgpPeerStatus', 'Get-AzVirtualNetworkGatewayConnection', 'Get-AzVirtualNetworkGatewayConnectionSharedKey', 'Get-AzVirtualNetworkGatewayLearnedRoute', 'Get-AzVirtualNetworkGatewayVpnclientIpsecParameter', 'Get-AzVirtualNetworkGatewayVpnProfilePackageUrl', 'Get-AzVirtualNetworkPeering', 'Get-AzVirtualNetworkTap', 'Get-AzVirtualNetworkUsage', 'Get-AzVirtualWan', 'Get-AzVpnConnection', 'Get-AzVpnGateway', 'Get-AzVpnSite', 'Get-AzWebApplicationFirewallPolicy', 'Invoke-AzBackendApplicationGatewayHealth', 'Invoke-AzDemandApplicationGatewayBackendHealthOn', 'Invoke-AzDownloadVpnSiteConfiguration', 'Invoke-AzGeneratevpnclientpackageVirtualNetworkGateway', 'Invoke-AzPrepareSubnetNetworkPolicy', 'Invoke-AzQueryConnectionMonitor', 'Invoke-AzScriptVirtualNetworkGatewayVpnDeviceConfiguration', 'Invoke-AzSupportedSecurityProvider', 'Invoke-AzSupportedVirtualNetworkGatewayVpnDevice', 'New-AzApplicationGateway', 'New-AzApplicationSecurityGroup', 'New-AzAzureFirewall', 'New-AzConnectionMonitor', 'New-AzDdoCustomPolicy', 'New-AzDdoProtectionPlan', 'New-AzExpressRouteCircuit', 'New-AzExpressRouteCircuitAuthorization', 'New-AzExpressRouteCircuitConnection', 'New-AzExpressRouteCircuitPeering', 'New-AzExpressRouteConnection', 'New-AzExpressRouteCrossConnection', 'New-AzExpressRouteCrossConnectionPeering', 'New-AzExpressRouteGateway', 'New-AzExpressRoutePort', 'New-AzInboundNatRule', 'New-AzInterfaceEndpoint', 'New-AzLoadBalancer', 'New-AzLocalNetworkGateway', 'New-AzNatGateway', 'New-AzNetworkInterface', 'New-AzNetworkInterfaceTapConfiguration', 'New-AzNetworkProfile', 'New-AzNetworkSecurityGroup', 'New-AzNetworkWatcher', 'New-AzP2SVpnGateway', 'New-AzP2SVpnGatewayVpnProfile', 'New-AzP2SVpnServerConfiguration', 'New-AzPacketCapture', 'New-AzPublicIPAddress', 'New-AzPublicIPPrefix', 'New-AzRoute', 'New-AzRouteFilter', 'New-AzRouteFilterRule', 'New-AzRouteTable', 'New-AzSecurityRule', 'New-AzServiceEndpointPolicy', 'New-AzServiceEndpointPolicyDefinition', 'New-AzSubnet', 'New-AzVirtualHub', 'New-AzVirtualNetwork', 'New-AzVirtualNetworkGateway', 'New-AzVirtualNetworkGatewayConnection', 'New-AzVirtualNetworkGatewayVpnProfile', 'New-AzVirtualNetworkPeering', 'New-AzVirtualNetworkTap', 'New-AzVirtualWan', 'New-AzVpnConnection', 'New-AzVpnGateway', 'New-AzVpnSite', 'New-AzWebApplicationFirewallPolicy', 'Remove-AzApplicationGateway', 'Remove-AzApplicationSecurityGroup', 'Remove-AzAzureFirewall', 'Remove-AzConnectionMonitor', 'Remove-AzDdosCustomPolicy', 'Remove-AzDdosProtectionPlan', 'Remove-AzExpressRouteCircuit', 'Remove-AzExpressRouteCircuitAuthorization', 'Remove-AzExpressRouteCircuitConnection', 'Remove-AzExpressRouteCircuitPeering', 'Remove-AzExpressRouteConnection', 'Remove-AzExpressRouteCrossConnectionPeering', 'Remove-AzExpressRouteGateway', 'Remove-AzExpressRoutePort', 'Remove-AzInboundNatRule', 'Remove-AzInterfaceEndpoint', 'Remove-AzLoadBalancer', 'Remove-AzLocalNetworkGateway', 'Remove-AzNatGateway', 'Remove-AzNetworkInterface', 'Remove-AzNetworkInterfaceTapConfiguration', 'Remove-AzNetworkProfile', 'Remove-AzNetworkSecurityGroup', 'Remove-AzNetworkWatcher', 'Remove-AzP2SVpnGateway', 'Remove-AzP2SVpnServerConfiguration', 'Remove-AzPacketCapture', 'Remove-AzPublicIPAddress', 'Remove-AzPublicIPPrefix', 'Remove-AzRoute', 'Remove-AzRouteFilter', 'Remove-AzRouteFilterRule', 'Remove-AzRouteTable', 'Remove-AzSecurityRule', 'Remove-AzServiceEndpointPolicy', 'Remove-AzServiceEndpointPolicyDefinition', 'Remove-AzSubnet', 'Remove-AzVirtualHub', 'Remove-AzVirtualNetwork', 'Remove-AzVirtualNetworkGateway', 'Remove-AzVirtualNetworkGatewayConnection', 'Remove-AzVirtualNetworkPeering', 'Remove-AzVirtualNetworkTap', 'Remove-AzVirtualWan', 'Remove-AzVpnConnection', 'Remove-AzVpnGateway', 'Remove-AzVpnSite', 'Remove-AzWebApplicationFirewallPolicy', 'Reset-AzVirtualNetworkGateway', 'Reset-AzVirtualNetworkGatewayConnectionSharedKey', 'Reset-AzVirtualNetworkGatewayVpnClientSharedKey', 'Set-AzApplicationGateway', 'Set-AzApplicationSecurityGroup', 'Set-AzAzureFirewall', 'Set-AzConnectionMonitor', 'Set-AzDdoCustomPolicy', 'Set-AzDdoProtectionPlan', 'Set-AzExpressRouteCircuit', 'Set-AzExpressRouteCircuitAuthorization', 'Set-AzExpressRouteCircuitConnection', 'Set-AzExpressRouteCircuitPeering', 'Set-AzExpressRouteConnection', 'Set-AzExpressRouteCrossConnection', 'Set-AzExpressRouteCrossConnectionPeering', 'Set-AzExpressRouteGateway', 'Set-AzExpressRoutePort', 'Set-AzInboundNatRule', 'Set-AzInterfaceEndpoint', 'Set-AzLoadBalancer', 'Set-AzLocalNetworkGateway', 'Set-AzNatGateway', 'Set-AzNetworkInterface', 'Set-AzNetworkInterfaceTapConfiguration', 'Set-AzNetworkProfile', 'Set-AzNetworkSecurityGroup', 'Set-AzNetworkWatcher', 'Set-AzNetworkWatcherFlowLogConfiguration', 'Set-AzP2SVpnGateway', 'Set-AzP2SVpnServerConfiguration', 'Set-AzPublicIPAddress', 'Set-AzPublicIPPrefix', 'Set-AzRoute', 'Set-AzRouteFilter', 'Set-AzRouteFilterRule', 'Set-AzRouteTable', 'Set-AzSecurityRule', 'Set-AzServiceEndpointPolicy', 'Set-AzServiceEndpointPolicyDefinition', 'Set-AzSubnet', 'Set-AzVirtualHub', 'Set-AzVirtualNetwork', 'Set-AzVirtualNetworkGateway', 'Set-AzVirtualNetworkGatewayConnection', 'Set-AzVirtualNetworkGatewayConnectionSharedKey', 'Set-AzVirtualNetworkGatewayVpnclientIpsecParameter', 'Set-AzVirtualNetworkPeering', 'Set-AzVirtualNetworkTap', 'Set-AzVirtualWan', 'Set-AzVpnConnection', 'Set-AzVpnGateway', 'Set-AzVpnSite', 'Set-AzWebApplicationFirewallPolicy', 'Start-AzApplicationGateway', 'Start-AzConnectionMonitor', 'Stop-AzApplicationGateway', 'Stop-AzConnectionMonitor', 'Stop-AzPacketCapture', 'Test-AzDnsNameAvailability', 'Test-AzNetworkWatcherConnectivity', 'Test-AzNetworkWatcherIPFlow', 'Test-AzVirtualNetworkIPAddressAvailability', 'Update-AzApplicationGatewayTag', 'Update-AzApplicationSecurityGroupTag', 'Update-AzDdoCustomPolicyTag', 'Update-AzDdoProtectionPlanTag', 'Update-AzExpressRouteCircuitTag', 'Update-AzExpressRouteCrossConnectionTag', 'Update-AzExpressRoutePortTag', 'Update-AzLoadBalancerTag', 'Update-AzLocalNetworkGatewayTag', 'Update-AzNatGatewayTag', 'Update-AzNetworkInterfaceTag', 'Update-AzNetworkProfileTag', 'Update-AzNetworkSecurityGroupTag', 'Update-AzNetworkWatcherTag', 'Update-AzP2SVpnGatewayTag', 'Update-AzPublicIPAddressTag', 'Update-AzPublicIPPrefixTag', 'Update-AzRouteFilter', 'Update-AzRouteFilterRule', 'Update-AzRouteTableTag', 'Update-AzServiceEndpointPolicy', 'Update-AzVirtualHubTag', 'Update-AzVirtualNetworkGatewayConnectionTag', 'Update-AzVirtualNetworkGatewayTag', 'Update-AzVirtualNetworkTag', 'Update-AzVirtualNetworkTapTag', 'Update-AzVirtualWanTag', 'Update-AzVpnGatewayTag', 'Update-AzVpnSiteTag', '*'
  AliasesToExport = '*'
# endregion

}